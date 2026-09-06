import os
import re
import sys
import time
import csv
import json
import argparse
import urllib.parse
from typing import Optional, Tuple, Dict, Any, List, Set
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed

# Import core scraper functions and browser pooling from scrape_download_links
from scrape_download_links import (
    scrape_movie_link,
    get_pooled_driver,
    quit_all_pooled_drivers,
    fetch_netlify_source_urls,
    clean_title_for_search,
    normalize_title,
    BAD_DOMAINS_FINAL,
)

# Output SQL File
DEFAULT_OUTPUT_SQL_FILE = "output_updates.sql"
_sql_file_lock = threading.Lock()


def escape_sql_str(val: Optional[str]) -> str:
    """Safely escapes single quotes for PostgreSQL string literals."""
    if val is None:
        return "NULL"
    cleaned = str(val).replace("'", "''")
    return f"'{cleaned}'"


def format_sql_array(arr: Optional[List[str]]) -> str:
    """Formats a Python list of strings into a PostgreSQL ARRAY['val1', 'val2']::text[] literal."""
    if not arr or len(arr) == 0:
        return "NULL"
    escaped_elements = [f"'{str(item).replace('\'', '\'\'')}'" for item in arr if item]
    if not escaped_elements:
        return "NULL"
    return f"ARRAY[{', '.join(escaped_elements)}]::text[]"


def append_sql_statements(sql_statements: List[str], output_filepath: str):
    """Appends generated SQL statements safely into the output .sql file."""
    if not sql_statements:
        return
    with _sql_file_lock:
        with open(output_filepath, "a", encoding="utf-8") as f:
            for stmt in sql_statements:
                f.write(stmt.strip() + "\n\n")


def load_categories_map_from_csv(categories_csv_path: str) -> Dict[str, str]:
    """Reads categories_rows.csv and returns a normalized lookup map -> official category_slug."""
    cat_map = {}
    if not os.path.exists(categories_csv_path):
        print(f"⚠️ Warning: Categories CSV file '{categories_csv_path}' not found. Category linking will use defaults.")
        return cat_map

    try:
        with open(categories_csv_path, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            for row in reader:
                slug = (row.get("slug") or "").strip()
                name = (row.get("name") or "").strip()
                if slug:
                    cat_map[slug.lower()] = slug
                    norm_slug = re.sub(r"[^a-z0-9]", "", slug.lower())
                    if norm_slug:
                        cat_map[norm_slug] = slug
                if name:
                    cat_map[name.lower()] = slug
                    norm_name = re.sub(r"[^a-z0-9]", "", name.lower())
                    if norm_name:
                        cat_map[norm_name] = slug

        # Standard HDHub4u category aliases mapped to official slugs
        aliases = {
            "300mb-movies": "300mb",
            "300mbmovies": "300mb",
            "300mb movies": "300mb",
            "south-hindi-movies": "south-hindi-dubbed",
            "southhindimovies": "south-hindi-dubbed",
            "south hindi movies": "south-hindi-dubbed",
            "hd-movies": "hd",
            "hdmovies": "hd",
            "hd movies": "hd",
        }
        for alias_key, target_slug in aliases.items():
            cat_map[alias_key] = target_slug

        print(f"✅ Loaded {len(cat_map)} category lookup entries from '{categories_csv_path}'")
    except Exception as e:
        print(f"⚠️ Error reading categories CSV '{categories_csv_path}': {e}")

    return cat_map


def load_movie_categories_map_from_csv(movie_categories_csv_path: str) -> Dict[str, Set[str]]:
    """Reads movie_categories_rows.csv and returns a mapping of movie_id -> Set[category_slug]."""
    existing_map: Dict[str, Set[str]] = {}
    if not os.path.exists(movie_categories_csv_path):
        print(f"ℹ️ Movie Categories CSV '{movie_categories_csv_path}' not found. All matched categories will be inserted.")
        return existing_map

    try:
        with open(movie_categories_csv_path, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            for row in reader:
                m_id = (row.get("movie_id") or "").strip()
                slug = (row.get("category_slug") or "").strip()
                if m_id and slug:
                    existing_map.setdefault(m_id, set()).add(slug)
        print(f"✅ Loaded existing category links for {len(existing_map)} movies from '{movie_categories_csv_path}'")
    except Exception as e:
        print(f"⚠️ Error reading movie_categories CSV '{movie_categories_csv_path}': {e}")

    return existing_map


def load_pending_movies_from_csv(movies_csv_path: str) -> List[Dict[str, Any]]:
    """Reads movies_rows.csv and returns a list of active movies needing download_url or file_size."""
    pending_movies = []
    if not os.path.exists(movies_csv_path):
        print(f"❌ Error: Movies CSV file '{movies_csv_path}' not found!")
        return pending_movies

    try:
        with open(movies_csv_path, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            for row in reader:
                m_id = (row.get("id") or "").strip()
                title = (row.get("title") or "").strip()
                status = (row.get("status") or "").strip().lower()
                download_url = (row.get("download_url") or "").strip()
                file_size = (row.get("file_size") or "").strip()

                is_active = status in ["", "active", "null", "none"]
                needs_download = (not download_url or download_url == "NOT_FOUND") or (not file_size or file_size == "N/A")

                if m_id and title and is_active and needs_download:
                    pending_movies.append({
                        "id": m_id,
                        "title": title,
                        "release_year": (row.get("release_year") or "").strip(),
                        "quality": (row.get("quality") or "").strip(),
                        "genres": row.get("genres"),
                        "actors": row.get("actors"),
                        "director": row.get("director"),
                        "language": row.get("language"),
                        "status": status,
                    })

        print(f"📌 Loaded {len(pending_movies)} pending active movie(s) needing links from '{movies_csv_path}'")
    except Exception as e:
        print(f"❌ Error reading movies CSV '{movies_csv_path}': {e}")

    return pending_movies


def generate_sql_for_movie(
    movie: Dict[str, Any],
    hub_url: Optional[str],
    file_size: Optional[str],
    extracted_meta: Dict[str, Any],
    cat_map: Dict[str, str],
    existing_cat_slugs: Set[str],
    is_valid_hubcloud: bool,
    err_reason: Optional[str] = None
) -> List[str]:
    """Generates PostgreSQL UPDATE and INSERT statements for a processed movie."""
    statements = []
    m_id = movie["id"]
    title = movie["title"]

    if is_valid_hubcloud:
        # Determine Quality
        q_str = str(extracted_meta.get("quality") or movie.get("quality") or "").lower()
        quality_val = (
            "1080p"
            if "1080p" in q_str
            else ("720p" if "720p" in q_str else ("4K" if "4k" in q_str else extracted_meta.get("quality") or movie.get("quality")))
        )

        update_fields = [
            f"download_url = {escape_sql_str(hub_url)}",
            f"file_size = {escape_sql_str(file_size)}",
            f"status = 'active'",
            f"updated_at = NOW()",
        ]

        if quality_val:
            update_fields.append(f"quality = {escape_sql_str(quality_val)}")
        if extracted_meta.get("genres") and not movie.get("genres"):
            update_fields.append(f"genres = {format_sql_array(extracted_meta['genres'])}")
        if extracted_meta.get("actors") and not movie.get("actors"):
            update_fields.append(f"actors = {format_sql_array(extracted_meta['actors'])}")
        if extracted_meta.get("director") and not movie.get("director"):
            update_fields.append(f"director = {escape_sql_str(extracted_meta['director'])}")

        sql_update = f"-- UPDATE MOVIE: {title} (ID: {m_id})\nUPDATE movies SET {', '.join(update_fields)} WHERE id = {escape_sql_str(m_id)};"
        statements.append(sql_update)
    else:
        # Check if transient error (Cloudflare 522) or permanent
        is_transient = err_reason and ("Cloudflare 522" in err_reason or "temporary" in err_reason)
        if not is_transient:
            # Mark INACTIVE
            sql_update = f"-- MARK INACTIVE: {title} (ID: {m_id}) | Reason: {err_reason or 'No valid link'}\nUPDATE movies SET status = 'inactive', updated_at = NOW() WHERE id = {escape_sql_str(m_id)};"
            statements.append(sql_update)

    # Collect and Link Category Badges into movie_categories
    candidate_items = []
    if extracted_meta.get("tags"):
        candidate_items.extend(extracted_meta["tags"])
    if extracted_meta.get("genres"):
        candidate_items.extend(extracted_meta["genres"])
    if extracted_meta.get("quality"):
        candidate_items.append(str(extracted_meta["quality"]))
    if movie.get("quality"):
        candidate_items.append(str(movie["quality"]))
    if extracted_meta.get("language"):
        candidate_items.append(str(extracted_meta["language"]))

    if cat_map and candidate_items:
        matched_category_slugs = set()

        def match_item(raw_item: Any):
            if not raw_item or not isinstance(raw_item, str):
                return
            t_low = raw_item.lower().strip()
            norm_t = re.sub(r"[^a-z0-9]", "", t_low)
            if t_low in cat_map:
                matched_category_slugs.add(cat_map[t_low])
            elif norm_t in cat_map:
                matched_category_slugs.add(cat_map[norm_t])

        for item in candidate_items:
            match_item(item)
            if isinstance(item, str):
                sub_parts = re.split(r"[/,\[\]\+\(\)]", item)
                for part in sub_parts:
                    part_clean = part.strip()
                    if part_clean:
                        match_item(part_clean)

        new_cat_slugs = [cat_slug for cat_slug in matched_category_slugs if cat_slug not in existing_cat_slugs]
        if new_cat_slugs:
            values_clauses = [f"({escape_sql_str(m_id)}, {escape_sql_str(cat_slug)})" for cat_slug in new_cat_slugs]
            sql_cat = f"-- LINK CATEGORIES: {title} ({new_cat_slugs})\nINSERT INTO movie_categories (movie_id, category_slug) VALUES {', '.join(values_clauses)} ON CONFLICT DO NOTHING;"
            statements.append(sql_cat)

    return statements


def _process_csv_movie_worker(
    movie: Dict[str, Any],
    netlify_urls: Dict[str, str],
    cat_map: Dict[str, str],
    existing_cat_map: Dict[str, Set[str]],
    output_sql_path: str
):
    """Worker function to process a single CSV movie row and append generated SQL."""
    title = movie["title"]
    m_id = movie["id"]
    rel_year = str(movie.get("release_year") or "").strip()
    norm_t = normalize_title(title)

    source_url = None
    if rel_year and f"{norm_t}_{rel_year}" in netlify_urls:
        source_url = netlify_urls[f"{norm_t}_{rel_year}"]
    elif norm_t in netlify_urls:
        source_url = netlify_urls[norm_t]

    if not source_url:
        clean_t = clean_title_for_search(title)
        if not clean_t:
            clean_t = title
        query = f"{clean_t} {movie.get('release_year') or ''}".strip()
        source_url = f"https://new5.hdhub4u.cl/?s={urllib.parse.quote(query)}"
    else:
        source_url = re.sub(r"https?://[^/]*hdhub4u[^/]*/", "https://new5.hdhub4u.cl/", source_url)

    log_prefix = f"[{title[:28]}] "

    try:
        driver = get_pooled_driver(headless=True)
        hub_url, name, file_size, err_reason, extracted_meta = scrape_movie_link(
            source_url,
            headless=True,
            driver=driver,
            movie_title=title,
            log_prefix=log_prefix,
        )

        is_valid_hubcloud = (
            hub_url
            and ("hubcloud" in hub_url.lower() or "/drive/" in hub_url.lower())
            and not any(bad in hub_url.lower() for bad in BAD_DOMAINS_FINAL)
            and file_size
            and file_size != "N/A"
        )

        existing_cat_slugs = existing_cat_map.get(m_id, set())
        sql_stmts = generate_sql_for_movie(
            movie, hub_url, file_size, extracted_meta, cat_map, existing_cat_slugs, is_valid_hubcloud, err_reason
        )

        append_sql_statements(sql_stmts, output_sql_path)

        if is_valid_hubcloud:
            print(f"✅ [SUCCESS] Generated SQL for '{title}' -> {hub_url} [{file_size}]")
        else:
            print(f"⚠️ [INACTIVE] Generated SQL for '{title}' (Reason: {err_reason or 'No valid link'})")

    except Exception as e:
        print(f"⚠️ Worker error for '{title}': {e}")


def run_offline_csv_scraper(
    movies_csv: str = "movies_rows.csv",
    categories_csv: str = "categories_rows.csv",
    movie_categories_csv: str = "movie_categories_rows.csv",
    output_sql: str = DEFAULT_OUTPUT_SQL_FILE,
    batch_size: int = 30,
    max_workers: int = 5
):
    print("\n" + "=" * 70)
    print("🚀 DEV DOWNLOADER - OFFLINE CSV -> SQL GENERATOR ENGINE")
    print("=" * 70)
    print("⚡ [Mode]: 100% Offline Local CSV Processing (Zero Supabase Egress)")
    print(f"📁 [Movies CSV]: {movies_csv}")
    print(f"📁 [Categories CSV]: {categories_csv}")
    print(f"📁 [Movie Categories CSV]: {movie_categories_csv}")
    print(f"📄 [Output SQL File]: {output_sql}")
    print(f"🧵 [Parallel Workers]: {max_workers} Workers")
    print("=" * 70 + "\n")

    # Write initial header comment in SQL file if not exists
    if not os.path.exists(output_sql):
        with open(output_sql, "w", encoding="utf-8") as f:
            f.write(f"-- DEV DOWNLOADER AUTOMATED SQL UPDATE SCRIPT\n-- Generated on {time.strftime('%Y-%m-%d %H:%M:%S')}\n-- Execute this script directly in Supabase SQL Editor\n\n")

    cat_map = load_categories_map_from_csv(categories_csv)
    existing_cat_map = load_movie_categories_map_from_csv(movie_categories_csv)
    pending_movies = load_pending_movies_from_csv(movies_csv)

    if not pending_movies:
        print("✨ No pending active movies found in CSV file. Everything is up to date!")
        return

    netlify_urls = fetch_netlify_source_urls()

    total_pending = len(pending_movies)
    processed_count = 0

    print(f"\n📌 Processing {total_pending} pending movie(s) in batches of {batch_size}...\n")

    for i in range(0, total_pending, batch_size):
        batch = pending_movies[i : i + batch_size]
        batch_num = (i // batch_size) + 1
        total_batches = (total_pending + batch_size - 1) // batch_size

        print(f"\n🔄 [BATCH #{batch_num}/{total_batches}] Processing {len(batch)} movies (Progress: {processed_count}/{total_pending})...")
        start_time = time.time()

        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = [
                executor.submit(_process_csv_movie_worker, movie, netlify_urls, cat_map, existing_cat_map, output_sql)
                for movie in batch
            ]
            for future in as_completed(futures):
                try:
                    future.result()
                except Exception as e:
                    print(f"⚠️ Batch execution exception: {e}")

        processed_count += len(batch)
        elapsed = round(time.time() - start_time, 2)
        print(f"⚡ [BATCH #{batch_num}/{total_batches}] Complete in {elapsed}s! Appended SQL to '{output_sql}'.")

    quit_all_pooled_drivers()
    print("\n" + "=" * 70)
    print(f"🎉 OFFLINE PROCESSING COMPLETE!")
    print(f"📄 Output SQL generated at: {os.path.abspath(output_sql)}")
    print("💡 You can now open this .sql file and run it in Supabase SQL Editor in 1 click!")
    print("=" * 70 + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Offline CSV -> SQL Scraper Engine")
    parser.add_argument("--movies", type=str, default="movies_rows.csv", help="Path to movies_rows.csv")
    parser.add_argument("--categories", type=str, default="categories_rows.csv", help="Path to categories_rows.csv")
    parser.add_argument("--movie-categories", type=str, default="movie_categories_rows.csv", help="Path to movie_categories_rows.csv")
    parser.add_argument("--output", type=str, default="output_updates.sql", help="Output .sql file path")
    parser.add_argument("--batch", type=int, default=30, help="Batch size (default: 30)")
    parser.add_argument("--workers", type=int, default=5, help="Number of parallel workers (default: 5)")
    args = parser.parse_args()

    run_offline_csv_scraper(
        movies_csv=args.movies,
        categories_csv=args.categories,
        movie_categories_csv=args.movie_categories,
        output_sql=args.output,
        batch_size=args.batch,
        max_workers=args.workers,
    )
