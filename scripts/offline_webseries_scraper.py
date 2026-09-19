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
import requests

if sys.platform == "win32":
    try:
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")
        sys.stderr.reconfigure(encoding="utf-8", errors="replace")
    except Exception:
        pass

from scrape_download_links import (
    get_pooled_driver,
    quit_all_pooled_drivers,
    fetch_netlify_source_urls,
    clean_title_for_search,
    normalize_title,
    BAD_DOMAINS_FINAL,
)
from scrape_webseries_links import scrape_webseries_season_links
from split_sql import split_sql_file

DEFAULT_OUTPUT_SQL_FILE = "webseries_output_updates.sql"
_sql_file_lock = threading.Lock()


def escape_sql_str(val: Optional[str]) -> str:
    """Safely escapes single quotes for PostgreSQL string literals."""
    if val is None or val == "":
        return "NULL"
    cleaned = str(val).replace("'", "''")
    return f"'{cleaned}'"


def append_sql_statements(sql_statements: List[str], output_filepath: str):
    """Appends generated SQL statements safely into the output .sql file."""
    if not sql_statements:
        return
    with _sql_file_lock:
        with open(output_filepath, "a", encoding="utf-8") as f:
            for stmt in sql_statements:
                f.write(stmt.strip() + "\n\n")


def send_telegram_webseries_report(
    total_series_processed: int,
    passed_seasons: int,
    passed_episodes: int,
    inactive_items: int,
    remaining_pending: int,
    elapsed_seconds: float,
    batch_count: int,
    sql_filename: str = DEFAULT_OUTPUT_SQL_FILE,
):
    """Sends a clean HTML summary report for WebSeries to Telegram admin chat."""
    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    chat_id = os.environ.get("TELEGRAM_ADMIN_CHAT_ID")
    if not bot_token or not chat_id:
        print("ℹ️ Telegram report skipped (TELEGRAM_BOT_TOKEN or TELEGRAM_ADMIN_CHAT_ID not set).")
        return

    mins = int(elapsed_seconds // 60)
    secs = int(elapsed_seconds % 60)
    time_str = f"{mins}m {secs}s" if mins > 0 else f"{secs}s"

    chain_msg = "🚀 <b>Auto-Chain:</b> Next WebSeries batch starting automatically..." if remaining_pending > 0 else "🎉 <b>Complete:</b> All WebSeries fully scanned!"

    msg_lines = [
        "📺 <b>DEV DOWNLOADER — WEBSERIES RUN REPORT</b>",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "📊 <b>Run Summary:</b>",
        f"• <b>WebSeries Processed:</b> {total_series_processed} series",
        f"• 🟢 <b>Passed Seasons (Links Found):</b> {passed_seasons} seasons",
        f"• 🟢 <b>Passed Episodes (Links Found):</b> {passed_episodes} episodes",
        f"• 🔴 <b>Inactive/Missing:</b> {inactive_items} items",
        "",
        "📈 <b>Backlog Progress:</b>",
        f"• ⏳ <b>Remaining Pending:</b> {remaining_pending:,} items left",
        "",
        "⏱️ <b>Execution Details:</b>",
        f"• <b>Batches Run:</b> {batch_count}",
        f"• <b>Duration:</b> {time_str}",
        f"• 📄 <b>SQL Updates File:</b> <code>{sql_filename}</code> (Saved & Pushed)",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        chain_msg,
    ]

    message = "\n".join(msg_lines)

    try:
        url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
        payload = {
            "chat_id": chat_id,
            "text": message,
            "parse_mode": "HTML",
            "disable_web_page_preview": True,
        }
        res = requests.post(url, json=payload, timeout=10)
        if res.status_code == 200:
            print("✅ Telegram WebSeries run report sent successfully!")
        else:
            print(f"⚠️ Telegram API error ({res.status_code}): {res.text}")
    except Exception as e:
        print(f"⚠️ Failed to send Telegram WebSeries report: {e}")


def update_seasons_csv_in_place(seasons_csv_path: str, season_updates: Dict[str, Dict[str, Any]]):
    """Updates seasons_rows.csv on disk with resolved download links."""
    if not os.path.exists(seasons_csv_path) or not season_updates:
        return
    rows = []
    fieldnames = []
    try:
        with open(seasons_csv_path, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            fieldnames = [fn for fn in (reader.fieldnames or []) if fn is not None]
            for row in reader:
                row.pop(None, None)
                s_id = (row.get("id") or "").strip()
                if s_id in season_updates:
                    up = season_updates[s_id]
                    for k, v in up.items():
                        if k in fieldnames and v is not None:
                            row[k] = str(v)
                    row["updated_at"] = time.strftime("%Y-%m-%d %H:%M:%S+00")
                rows.append(row)

        with open(seasons_csv_path, mode="w", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
            writer.writeheader()
            writer.writerows(rows)
        print(f"💾 Saved progress for {len(season_updates)} season(s) to '{seasons_csv_path}'.")
    except Exception as e:
        print(f"⚠️ Error updating '{seasons_csv_path}': {e}")


def update_episodes_csv_in_place(episodes_csv_path: str, episode_updates: Dict[str, Dict[str, Any]]):
    """Updates episodes_rows.csv on disk with resolved download links."""
    if not os.path.exists(episodes_csv_path) or not episode_updates:
        return
    rows = []
    fieldnames = []
    try:
        with open(episodes_csv_path, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            fieldnames = [fn for fn in (reader.fieldnames or []) if fn is not None]
            for row in reader:
                row.pop(None, None)
                e_id = (row.get("id") or "").strip()
                if e_id in episode_updates:
                    up = episode_updates[e_id]
                    for k, v in up.items():
                        if k in fieldnames and v is not None:
                            row[k] = str(v)
                    row["updated_at"] = time.strftime("%Y-%m-%d %H:%M:%S+00")
                rows.append(row)

        with open(episodes_csv_path, mode="w", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
            writer.writeheader()
            writer.writerows(rows)
        print(f"💾 Saved progress for {len(episode_updates)} episode(s) to '{episodes_csv_path}'.")
    except Exception as e:
        print(f"⚠️ Error updating '{episodes_csv_path}': {e}")


def run_offline_webseries_scraper(
    web_series_csv: str = "web_series_rows.csv",
    seasons_csv: str = "seasons_rows.csv",
    episodes_csv: str = "episodes_rows.csv",
    categories_csv: str = "web_series_categories_rows.csv",
    output_sql: str = DEFAULT_OUTPUT_SQL_FILE,
    batch_size: int = 15,
    max_workers: int = 4,
    max_batches: int = 4,
):
    print("\n" + "=" * 70)
    print("🚀 DEV DOWNLOADER - OFFLINE WEBSERIES -> SQL GENERATOR ENGINE")
    print("=" * 70)
    print("⚡ [Mode]: 100% Offline Local CSV WebSeries Processing")
    print(f"📁 [WebSeries CSV]: {web_series_csv}")
    print(f"📁 [Seasons CSV]: {seasons_csv}")
    print(f"📁 [Episodes CSV]: {episodes_csv}")
    print(f"📄 [Output SQL File]: {output_sql}")
    print(f"⏱️ [Max Batches per Run]: {max_batches if max_batches > 0 else 'Unlimited'}")
    print("=" * 70 + "\n")

    if not os.path.exists(output_sql):
        with open(output_sql, "w", encoding="utf-8") as f:
            f.write(f"-- DEV DOWNLOADER AUTOMATED WEBSERIES SQL UPDATE SCRIPT\n-- Generated on {time.strftime('%Y-%m-%d %H:%M:%S')}\n\n")

    # Read WebSeries, Seasons, Episodes
    web_series_dict = {}
    if os.path.exists(web_series_csv):
        with open(web_series_csv, mode="r", encoding="utf-8-sig") as f:
            for r in csv.DictReader(f):
                row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in r.items() if k}
                ws_id = row.get("id", "")
                if ws_id:
                    web_series_dict[ws_id] = row

    seasons_list = []
    if os.path.exists(seasons_csv):
        with open(seasons_csv, mode="r", encoding="utf-8-sig") as f:
            for r in csv.DictReader(f):
                row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in r.items() if k}
                seasons_list.append(row)

    episodes_list = []
    if os.path.exists(episodes_csv):
        with open(episodes_csv, mode="r", encoding="utf-8-sig") as f:
            for r in csv.DictReader(f):
                row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in r.items() if k}
                episodes_list.append(row)

    # Group missing seasons by web_series_id
    pending_series_ids = set()
    for s in seasons_list:
        url_720 = s.get("download_url_720p", "")
        url_1080 = s.get("download_url_1080p", "")
        if not url_720 and not url_1080 and s.get("web_series_id") in web_series_dict:
            pending_series_ids.add(s["web_series_id"])

    for e in episodes_list:
        url_720 = e.get("download_url_720p", "")
        url_1080 = e.get("download_url_1080p", "")
        # Map episode to series via season_id
        if not url_720 and not url_1080:
            s_id = e.get("season_id")
            s_match = next((s for s in seasons_list if s.get("id") == s_id), None)
            if s_match and s_match.get("web_series_id") in web_series_dict:
                pending_series_ids.add(s_match["web_series_id"])

    pending_series_list = [web_series_dict[ws_id] for ws_id in pending_series_ids]

    if not pending_series_list:
        print("✨ No pending WebSeries/Seasons/Episodes needing download links. Everything is up to date!")
        return

    print(f"📌 Found {len(pending_series_list)} WebSeries with missing Season/Episode links.")
    netlify_urls = fetch_netlify_source_urls()

    overall_start_time = time.time()
    total_series_processed = 0
    passed_seasons_count = 0
    passed_episodes_count = 0
    inactive_items_count = 0
    last_batch_num = 0

    total_series = len(pending_series_list)

    for i in range(0, total_series, batch_size):
        batch = pending_series_list[i : i + batch_size]
        batch_num = (i // batch_size) + 1
        last_batch_num = batch_num
        total_batches = (total_series + batch_size - 1) // batch_size

        print(f"\n🔄 [WEBSERIES BATCH #{batch_num}/{total_batches}] Processing {len(batch)} series...")
        start_time = time.time()

        season_updates_map = {}
        episode_updates_map = {}
        batch_sql = []

        def worker_task(series_row: Dict[str, Any]):
            nonlocal passed_seasons_count, passed_episodes_count, inactive_items_count
            s_title = series_row.get("title", "")
            ws_id = series_row.get("id", "")
            rel_year = series_row.get("release_year", "")
            norm_t = normalize_title(s_title)

            # Find source url
            source_url = None
            if rel_year and f"{norm_t}_{rel_year}" in netlify_urls:
                source_url = netlify_urls[f"{norm_t}_{rel_year}"]
            elif norm_t in netlify_urls:
                source_url = netlify_urls[norm_t]

            if not source_url:
                clean_t = clean_title_for_search(s_title) or s_title
                source_url = f"https://new5.hdhub4u.cl/?s={urllib.parse.quote(clean_t)}"

            # Get all seasons for this series
            ws_seasons = [s for s in seasons_list if s.get("web_series_id") == ws_id]

            driver = get_pooled_driver(headless=True)
            for s_row in ws_seasons:
                s_id = s_row["id"]
                s_num = int(s_row.get("season_number") or 1)

                season_links, ep_links_dict, err, meta = scrape_webseries_season_links(
                    source_url,
                    season_number=s_num,
                    headless=True,
                    driver=driver,
                    series_title=s_title,
                    log_prefix=f"[{s_title[:20]} S{s_num}] ",
                )

                # Update Season SQL & CSV
                up_s = {}
                if season_links.get("url_720p") or season_links.get("url_1080p"):
                    up_s = {
                        "download_url_720p": season_links.get("url_720p"),
                        "download_url_1080p": season_links.get("url_1080p"),
                        "file_size_720p": season_links.get("size_720p"),
                        "file_size_1080p": season_links.get("size_1080p"),
                    }
                    season_updates_map[s_id] = up_s
                    passed_seasons_count += 1

                    stmt = (
                        f"-- UPDATE SEASON: {s_title} S{s_num} (ID: {s_id})\n"
                        f"UPDATE seasons SET download_url_720p = {escape_sql_str(season_links.get('url_720p'))}, "
                        f"download_url_1080p = {escape_sql_str(season_links.get('url_1080p'))}, "
                        f"file_size_720p = {escape_sql_str(season_links.get('size_720p'))}, "
                        f"file_size_1080p = {escape_sql_str(season_links.get('size_1080p'))}, "
                        f"updated_at = NOW() WHERE id = '{s_id}';"
                    )
                    batch_sql.append(stmt)
                else:
                    inactive_items_count += 1

                # Update Episodes SQL & CSV
                s_episodes = [e for e in episodes_list if e.get("season_id") == s_id]
                for e_row in s_episodes:
                    e_id = e_row["id"]
                    e_num = int(e_row.get("episode_number") or 1)

                    if e_num in ep_links_dict:
                        e_info = ep_links_dict[e_num]
                        up_e = {
                            "download_url_720p": e_info.get("url_720p"),
                            "download_url_1080p": e_info.get("url_1080p"),
                            "file_size_720p": e_info.get("size_720p"),
                            "file_size_1080p": e_info.get("size_1080p"),
                        }
                        episode_updates_map[e_id] = up_e
                        passed_episodes_count += 1

                        stmt = (
                            f"-- UPDATE EPISODE: {s_title} S{s_num}E{e_num} (ID: {e_id})\n"
                            f"UPDATE episodes SET download_url_720p = {escape_sql_str(e_info.get('url_720p'))}, "
                            f"download_url_1080p = {escape_sql_str(e_info.get('url_1080p'))}, "
                            f"file_size_720p = {escape_sql_str(e_info.get('size_720p'))}, "
                            f"file_size_1080p = {escape_sql_str(e_info.get('size_1080p'))}, "
                            f"updated_at = NOW() WHERE id = '{e_id}';"
                        )
                        batch_sql.append(stmt)

        with ThreadPoolExecutor(max_workers=max_workers) as executor:
            futures = [executor.submit(worker_task, s_row) for s_row in batch]
            for future in as_completed(futures):
                try:
                    future.result()
                except Exception as e:
                    print(f"⚠️ Worker error: {e}")

        # Update CSV files on disk
        update_seasons_csv_in_place(seasons_csv, season_updates_map)
        update_episodes_csv_in_place(episodes_csv, episode_updates_map)
        append_sql_statements(batch_sql, output_sql)

        total_series_processed += len(batch)
        elapsed = round(time.time() - start_time, 2)
        print(f"⚡ [WEBSERIES BATCH #{batch_num}/{total_batches}] Complete in {elapsed}s!")

        if max_batches > 0 and batch_num >= max_batches:
            print(f"\n⏱️ Reached max batches limit ({max_batches} batches). Stopping cleanly for GitHub Actions!")
            break

    quit_all_pooled_drivers()

    # Calculate remaining pending & split SQL
    remaining_seasons = 0
    with open(seasons_csv, mode="r", encoding="utf-8-sig") as f:
        for r in csv.DictReader(f):
            if not r.get("download_url_720p") and not r.get("download_url_1080p"):
                remaining_seasons += 1

    remaining_episodes = 0
    with open(episodes_csv, mode="r", encoding="utf-8-sig") as f:
        for r in csv.DictReader(f):
            if not r.get("download_url_720p") and not r.get("download_url_1080p"):
                remaining_episodes += 1

    remaining_pending = remaining_seasons + remaining_episodes
    overall_elapsed = time.time() - overall_start_time

    # Split SQL output
    split_sql_file(output_sql, 3)

    # Send Telegram Report
    send_telegram_webseries_report(
        total_series_processed=total_series_processed,
        passed_seasons=passed_seasons_count,
        passed_episodes=passed_episodes_count,
        inactive_items=inactive_items_count,
        remaining_pending=remaining_pending,
        elapsed_seconds=overall_elapsed,
        batch_count=last_batch_num,
        sql_filename=os.path.basename(output_sql),
    )

    print("\n" + "=" * 70)
    print(f"🎉 WEBSERIES BATCH RUN COMPLETE!")
    print(f"📄 Generated SQL at: {os.path.abspath(output_sql)}")
    print("=" * 70 + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Offline WebSeries CSV -> SQL Scraper")
    parser.add_argument("--series", type=str, default="web_series_rows.csv")
    parser.add_argument("--seasons", type=str, default="seasons_rows.csv")
    parser.add_argument("--episodes", type=str, default="episodes_rows.csv")
    parser.add_argument("--categories", type=str, default="web_series_categories_rows.csv")
    parser.add_argument("--output", type=str, default=DEFAULT_OUTPUT_SQL_FILE)
    parser.add_argument("--batch", type=int, default=15)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--max-batches", type=int, default=4)
    args = parser.parse_args()

    run_offline_webseries_scraper(
        web_series_csv=args.series,
        seasons_csv=args.seasons,
        episodes_csv=args.episodes,
        categories_csv=args.categories,
        output_sql=args.output,
        batch_size=args.batch,
        max_workers=args.workers,
        max_batches=args.max_batches,
    )
