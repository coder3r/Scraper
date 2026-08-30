import os
import re
import sys
import time
import json
import argparse
import urllib.parse
import urllib.request
from typing import Optional, Tuple, Dict, Any, List
from concurrent.futures import ThreadPoolExecutor, as_completed

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from supabase import create_client, Client

try:
    from dotenv import load_dotenv

    load_dotenv(".env")
    load_dotenv(".env.local")
except ImportError:
    pass

# --- Configuration & Environment ---
SUPABASE_URL = (
    os.environ.get("SUPABASE_URL")
    or os.environ.get("VITE_SUPABASE_URL")
    or "https://gorzuynmwwsscoovtvyr.supabase.co"
)
SUPABASE_KEY = (
    os.environ.get("SUPABASE_SERVICE_ROLE_KEY")
    or os.environ.get("SUPABASE_ANON_KEY")
    or os.environ.get("VITE_SUPABASE_ANON_KEY")
    or os.environ.get("SUPABASE_KEY")
)

supabase: Optional[Client] = None
if SUPABASE_URL and SUPABASE_KEY:
    try:
        supabase = create_client(SUPABASE_URL, SUPABASE_KEY)
    except Exception as e:
        print(f"⚠️ Supabase Init Warning: {e}")

DEFAULT_SOURCE_URL = (
    "https://new5.hdhub4u.cl/desert-bloom-1986-webrip-hindi-full-movie/"
)

# Step 1 excludes direct ad links or file-host tips, BUT ALLOWS mediator domains
BAD_DOMAINS_STEP1 = [
    "yodrive.",
    "linkrit.",
    "hubdrive.tips",
    "facebook.",
    "whatsapp.",
    "telegram.",
]
# Final validation excludes homepage/ad links to ensure ONLY direct HubCloud/Drive is saved
BAD_DOMAINS_FINAL = [
    "hdhub4u.",
    "yodrive.",
    "linkrit.",
    "greenmount",
    "hubdrive.tips",
    "facebook.",
    "whatsapp.",
    "telegram.",
]

# --- AD & POPUP BLOCKING CONFIGURATION ---
# Common ad-network / redirect-chain domains known to hijack clicks or spawn
# popup tabs during the mediator verification flow (Step 2-7: "CLICK TO
# CONTINUE" -> 10s timer -> "GET LINKS"). These are blocked at the network
# level via Chrome DevTools Protocol so they never get a chance to load a
# script, redirect the page, or open a new window in the first place.
AD_NETWORK_DOMAINS = [
    "popads.net",
    "popcash.net",
    "propellerads.com",
    "propeller.com",
    "adsterra.com",
    "adsterratech.com",
    "exoclick.com",
    "exosrv.com",
    "juicyads.com",
    "mgid.com",
    "taboola.com",
    "outbrain.com",
    "doubleclick.net",
    "googlesyndication.com",
    "google-analytics.com",
    "adnxs.com",
    "revcontent.com",
    "adcash.com",
    "clickadu.com",
    "hilltopads.net",
    "adskeeper.com",
    "smartyads.com",
    "yllix.com",
    "onclickmax.com",
    "coinzillatag.com",
    "greenmount",
]


def normalize_title(text: str) -> str:
    if not text:
        return ""
    return re.sub(r"[^a-z0-9]", "", text.lower()).strip()


def clean_title_for_search(text: str) -> str:
    if not text:
        return ""
    text = re.sub(r"[^\x00-\x7F]+", " ", text)
    text = re.sub(r"[:\(\)\[\]\.\,\-\_]", " ", text)
    return re.sub(r"\s+", " ", text).strip()


def clean_movie_name(raw_title: str) -> str:
    if not raw_title:
        return "N/A"
    clean = re.sub(
        r"Notice\s*:\s*Bookmark\s*new\s*domain\s*:\s*[^\s]+",
        "",
        raw_title,
        flags=re.IGNORECASE,
    )
    clean = re.sub(r"Bookmark\s*new\s*domain\s*:[^\s]+", "", clean, flags=re.IGNORECASE)
    clean = clean.replace("Notice:", "").strip()
    return clean if clean else "N/A"


def send_telegram_alert(
    movie_title: str,
    release_year: Any,
    source_url: str,
    reason: str,
    action_text: str = "Set status to INACTIVE",
):
    bot_token = os.environ.get("TELEGRAM_BOT_TOKEN")
    chat_id = os.environ.get("TELEGRAM_ADMIN_CHAT_ID")
    if not bot_token or not chat_id:
        print(
            f"⚠️ Cannot send Telegram alert for '{movie_title}': TELEGRAM_BOT_TOKEN or TELEGRAM_ADMIN_CHAT_ID missing in env."
        )
        return
    try:
        clean_url = (source_url or "").replace("<", "").replace(">", "")
        text = (
            f"⚠️ <b>[Dev Downloader Scraper Alert]</b>\n\n"
            f"🎬 <b>Movie:</b> {movie_title} ({release_year or 'N/A'})\n"
            f"🚫 <b>Action:</b> {action_text}\n"
            f"❗ <b>Reason:</b> {reason}\n"
            f"🔗 <b>URL:</b> {clean_url}"
        )
        api_url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
        data = json.dumps(
            {"chat_id": chat_id, "text": text, "parse_mode": "HTML"}
        ).encode("utf-8")
        req = urllib.request.Request(
            api_url, data=data, headers={"Content-Type": "application/json"}
        )
        with urllib.request.urlopen(req) as resp:
            pass
        print(f"📡 Sent Telegram Alert for '{movie_title}' to Bot Suri.")
    except Exception as e:
        print(f"⚠️ Could not send Telegram alert for '{movie_title}': {e}")


def close_extra_ad_tabs(
    driver, keep_handle: str, allow_url_keywords: Optional[List[str]] = None
):
    """
    Closes any browser tab/window that pops up unexpectedly during the
    mediator verification flow (an ad script calling window.open() when the
    'CLICK TO CONTINUE' or 'GET LINKS' button is clicked), keeping only the
    tab identified by `keep_handle` open.

    If a newly opened tab's URL contains one of `allow_url_keywords` (e.g.
    'hblinks', 'hubcloud') AND does not match a known ad domain, it is left
    open instead of being closed — since it may be the legitimate next step
    in the chain (the site sometimes opens the real destination in a new
    tab rather than navigating the current one).
    """
    allow_url_keywords = allow_url_keywords or []
    try:
        for handle in list(driver.window_handles):
            if handle == keep_handle:
                continue
            try:
                driver.switch_to.window(handle)
                curr_url = (driver.current_url or "").lower()
                is_known_ad = any(ad in curr_url for ad in AD_NETWORK_DOMAINS)
                is_legit = any(kw in curr_url for kw in allow_url_keywords)
                if is_legit and not is_known_ad:
                    continue  # keep — likely the real next step, not an ad
                driver.close()
                print(f"🧹 Closed ad/popup tab: {curr_url[:80] or 'about:blank'}")
            except Exception:
                try:
                    driver.close()
                except Exception:
                    pass
        driver.switch_to.window(keep_handle)
    except Exception:
        pass


def fetch_categories_map(supabase_client: Client) -> Dict[str, str]:
    """Fetches all categories from Supabase and returns a normalized lookup map -> official category_slug."""
    cat_map = {}
    try:
        res = supabase_client.from_("categories").select("id, name, slug").execute()
        for row in res.data or []:
            slug = row.get("slug")
            name = row.get("name")
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

        # Common HDHub4u site category slug aliases mapped to Supabase category slugs
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
    except Exception as err:
        print(f"⚠️ Error fetching categories map from Supabase: {err}")
    return cat_map


def save_movie_data_to_supabase(
    m_id: str,
    title: str,
    hub_url: str,
    file_size: str,
    extracted_meta: Dict[str, Any],
    existing_movie: Dict[str, Any],
    cat_map: Dict[str, str],
):
    """Updates `movies` table and inserts links into `movie_categories` junction table."""
    update_data = {"download_url": hub_url, "file_size": file_size, "status": "active"}

    # 1. Update missing attributes on `movies` table if empty
    if (
        not existing_movie.get("genres") or len(existing_movie.get("genres") or []) == 0
    ) and extracted_meta.get("genres"):
        update_data["genres"] = extracted_meta["genres"]
    if (
        not existing_movie.get("actors") or len(existing_movie.get("actors") or []) == 0
    ) and extracted_meta.get("actors"):
        update_data["actors"] = extracted_meta["actors"]
    if not existing_movie.get("director") and extracted_meta.get("director"):
        update_data["director"] = extracted_meta["director"]
    if not existing_movie.get("quality") and extracted_meta.get("quality"):
        q_str = str(extracted_meta["quality"]).lower()
        update_data["quality"] = (
            "1080p"
            if "1080p" in q_str
            else (
                "720p"
                if "720p" in q_str
                else ("4K" if "4k" in q_str else extracted_meta["quality"])
            )
        )

    supabase.from_("movies").update(update_data).eq("id", m_id).execute()
    print(
        f"✅ Updated Supabase DB record for '{title}' (ID: {m_id}) -> {hub_url} [{file_size}]"
    )

    # 2. Collect post-specific category candidates:
    candidate_items = []
    if extracted_meta.get("tags"):
        candidate_items.extend(extracted_meta["tags"])
    if extracted_meta.get("genres"):
        candidate_items.extend(extracted_meta["genres"])
    if extracted_meta.get("quality"):
        candidate_items.append(str(extracted_meta["quality"]))
    if existing_movie.get("quality"):
        candidate_items.append(str(existing_movie["quality"]))
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

        if matched_category_slugs:
            existing_slugs = set()
            try:
                cat_res = (
                    supabase.from_("movie_categories")
                    .select("category_slug")
                    .eq("movie_id", m_id)
                    .execute()
                )
                for r in cat_res.data or []:
                    existing_slugs.add(r.get("category_slug"))
            except Exception as e:
                print(f"⚠️ Could not check existing movie_categories: {e}")

            linked_count = 0
            for cat_slug in matched_category_slugs:
                if cat_slug not in existing_slugs:
                    try:
                        supabase.from_("movie_categories").insert(
                            {"movie_id": m_id, "category_slug": cat_slug}
                        ).execute()
                        linked_count += 1
                    except Exception as ins_err:
                        err_text = str(ins_err)
                        if (
                            "duplicate key" not in err_text
                            and "23505" not in err_text
                            and "Server disconnected" not in err_text
                        ):
                            print(
                                f"⚠️ Insert error into movie_categories for '{cat_slug}': {ins_err}"
                            )

            print(
                f"🏷️ Linked {linked_count} Category Badges to 'movie_categories' table for '{title}' ({list(matched_category_slugs)})"
            )


def save_movie_metadata_and_categories_only(
    m_id: str,
    title: str,
    extracted_meta: Dict[str, Any],
    existing_movie: Dict[str, Any],
    cat_map: Dict[str, str],
):
    """Enriches `movies` table metadata and inserts all category badges into `movie_categories` BEFORE marking inactive."""
    update_data = {}
    if (
        not existing_movie.get("genres") or len(existing_movie.get("genres") or []) == 0
    ) and extracted_meta.get("genres"):
        update_data["genres"] = extracted_meta["genres"]
    if (
        not existing_movie.get("actors") or len(existing_movie.get("actors") or []) == 0
    ) and extracted_meta.get("actors"):
        update_data["actors"] = extracted_meta["actors"]
    if not existing_movie.get("director") and extracted_meta.get("director"):
        update_data["director"] = extracted_meta["director"]
    if not existing_movie.get("quality") and extracted_meta.get("quality"):
        q_str = str(extracted_meta["quality"]).lower()
        update_data["quality"] = (
            "1080p"
            if "1080p" in q_str
            else (
                "720p"
                if "720p" in q_str
                else ("4K" if "4k" in q_str else extracted_meta["quality"])
            )
        )

    if update_data:
        try:
            supabase.from_("movies").update(update_data).eq("id", m_id).execute()
        except Exception as e:
            print(f"⚠️ Could not update movie metadata for '{title}': {e}")

    candidate_items = []
    if extracted_meta.get("tags"):
        candidate_items.extend(extracted_meta["tags"])
    if extracted_meta.get("genres"):
        candidate_items.extend(extracted_meta["genres"])
    if extracted_meta.get("quality"):
        candidate_items.append(str(extracted_meta["quality"]))
    if existing_movie.get("quality"):
        candidate_items.append(str(existing_movie["quality"]))
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

        if matched_category_slugs:
            existing_slugs = set()
            try:
                cat_res = (
                    supabase.from_("movie_categories")
                    .select("category_slug")
                    .eq("movie_id", m_id)
                    .execute()
                )
                for r in cat_res.data or []:
                    existing_slugs.add(r.get("category_slug"))
            except Exception:
                pass

            linked_count = 0
            for cat_slug in matched_category_slugs:
                if cat_slug not in existing_slugs:
                    try:
                        supabase.from_("movie_categories").insert(
                            {"movie_id": m_id, "category_slug": cat_slug}
                        ).execute()
                        linked_count += 1
                    except Exception as ins_err:
                        err_text = str(ins_err)
                        if (
                            "duplicate key" not in err_text
                            and "23505" not in err_text
                            and "Server disconnected" not in err_text
                        ):
                            print(
                                f"⚠️ Insert error into movie_categories for '{cat_slug}': {ins_err}"
                            )

            if linked_count > 0:
                print(
                    f"🏷️ Enriched {linked_count} Category Badges into 'movie_categories' table for '{title}' (Before setting inactive)"
                )


def extract_hubcloud_via_http(hub_url: str) -> Tuple[Optional[str], Optional[str]]:
    """Fast Direct HTTP extraction bypassing Selenium DOM rendering (0.4s speed)."""
    try:
        req = urllib.request.Request(
            hub_url,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36",
                "Accept-Language": "en-US,en;q=0.9",
            },
        )
        with urllib.request.urlopen(req, timeout=6) as resp:
            html = resp.read().decode("utf-8", errors="ignore")

        if (
            "Error code 522" in html
            or "Connection timed out" in html
            or "Cloudflare" in html
        ):
            return None, None

        # Extract File Size
        file_size = "N/A"
        size_match = re.search(r"(\d+\.\d+|\d+)\s*(GB|MB|KB)", html, re.IGNORECASE)
        if size_match:
            file_size = size_match.group(0)

        # Extract Title
        movie_name = "N/A"
        title_match = re.search(
            r"<h[1-4][^>]*>(.*?)</h[1-4]>", html, re.IGNORECASE | re.DOTALL
        )
        if title_match:
            raw_title = clean_movie_name(
                re.sub(r"<[^>]+>", "", title_match.group(1)).strip()
            )
            parts = raw_title.split(".")
            title_parts = []
            for part in parts:
                if part.lower() in [
                    "1080p",
                    "720p",
                    "4k",
                    "web-dl",
                    "webrip",
                    "bluray",
                ]:
                    break
                title_parts.append(part)
            if title_parts:
                movie_name = ".".join(title_parts)

        if file_size != "N/A":
            return movie_name, file_size
    except Exception:
        pass
    return None, None


def scrape_movie_link(
    source_url: Optional[str] = None, headless: bool = False
) -> Tuple[Optional[str], Optional[str], Optional[str], Optional[str], Dict[str, Any]]:
    if not source_url:
        source_url = DEFAULT_SOURCE_URL

    extracted_meta = {
        "genres": [],
        "actors": [],
        "director": None,
        "language": None,
        "quality": None,
        "tags": [],
    }

    # High-Performance Headless Chrome Configuration
    options = webdriver.ChromeOptions()
    options.page_load_strategy = "eager"
    if headless or os.environ.get("CI"):
        options.add_argument("--headless=new")
    options.add_argument("--start-maximized")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-gpu")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--disable-extensions")
    options.add_argument("--disable-notifications")
    options.add_argument("--blink-settings=imagesEnabled=false")
    options.add_argument("--disable-blink-features=AutomationControlled")
    options.add_argument(
        "user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"
    )
    options.add_argument("--window-size=1920,1080")
    # 🛡️ Keep Chrome's native popup blocker ON (previously
    # "--disable-popup-blocking" explicitly turned it OFF, letting every
    # ad-triggered window.open() through during Steps 3 & 5). Also disable
    # popups/notifications/geolocation prompts via prefs as a second layer.
    options.add_experimental_option(
        "prefs",
        {
            "profile.default_content_setting_values.notifications": 2,
            "profile.default_content_setting_values.popups": 2,
            "profile.managed_default_content_settings.popups": 2,
            "profile.default_content_setting_values.geolocation": 2,
        },
    )

    driver = webdriver.Chrome(
        service=Service(ChromeDriverManager().install()), options=options
    )
    driver.set_page_load_timeout(15)
    driver.set_script_timeout(10)
    wait = WebDriverWait(driver, 10)

    # 🛡️ Network-level ad blocking via Chrome DevTools Protocol. This stops
    # ad scripts / redirect chains from loading at all, so they can't hijack
    # a click or spawn a popup tab during the "CLICK TO CONTINUE" -> 10s
    # timer -> "GET LINKS" verification flow.
    try:
        driver.execute_cdp_cmd("Network.enable", {})
        driver.execute_cdp_cmd(
            "Network.setBlockedURLs",
            {"urls": [f"*{domain}*" for domain in AD_NETWORK_DOMAINS]},
        )
    except Exception as cdp_err:
        print(f"⚠️ CDP ad-blocking setup warning: {cdp_err}")

    main_window = driver.current_window_handle

    try:
        # --- STEP 0: Single-pass Search Query if source_url is a Search URL ---
        if "/?s=" in source_url or "search" in source_url:
            print(f"[*] Searching HDHub4u for title: {source_url}")
            driver.get(source_url)
            time.sleep(1.5)
            close_extra_ad_tabs(driver, main_window)
            try:
                first_post = driver.find_element(
                    By.XPATH,
                    "//div[contains(@class, 'result') or contains(@class, 'post') or contains(@class, 'thumb')]//a | //h2/a",
                )
                source_url = first_post.get_attribute("href")
                print(f"[*] Found post page: {source_url}")
            except Exception:
                err = "Search yielded 0 results on HDHub4u"
                print(f"⚠️ {err} for: {source_url}")
                return None, None, None, err, extracted_meta

        # Ensure active domain
        source_url = re.sub(
            r"https?://[^/]*hdhub4u[^/]*/", "https://new5.hdhub4u.cl/", source_url
        )

        # --- STEP 1: Main page se download link nikaalo & EXTRACT METADATA ---
        print(f"[*] Step 1: Opening main page & extracting metadata: {source_url}")
        driver.get(source_url)
        time.sleep(1.2)
        close_extra_ad_tabs(driver, main_window)

        # 📌 METADATA EXTRACTION (POST HEADER SCOPED)
        try:
            cat_badge_elements = driver.find_elements(
                By.CSS_SELECTOR,
                ".entry-header .post-categories a, .entry-header a[rel='category tag'], div.category-badges a, div.meta-badges a, .entry-categories a, div.single-category a, .post-meta a[href*='/category/']",
            )
            if not cat_badge_elements:
                cat_badge_elements = driver.find_elements(
                    By.XPATH,
                    "//h1/following-sibling::div[1]//a[contains(@href, '/category/')] | //h1/preceding-sibling::div[1]//a[contains(@href, '/category/')] | //h2/following-sibling::div[1]//a[contains(@href, '/category/')] | //h2/preceding-sibling::div[1]//a[contains(@href, '/category/')]",
                )

            for elem in cat_badge_elements:
                raw_txt = (elem.text or "").strip()
                txt = re.sub(r"[\ue000-\uf8ff]", "", raw_txt).strip()
                href = (elem.get_attribute("href") or "").strip()

                if (
                    txt
                    and txt not in extracted_meta["tags"]
                    and not any(
                        bad_word in txt.lower()
                        for bad_word in ["home", "login", "register", "contact"]
                    )
                ):
                    extracted_meta["tags"].append(txt)
                if "/category/" in href:
                    href_slug = href.rstrip("/").split("/")[-1].lower()
                    if href_slug and href_slug not in extracted_meta["tags"]:
                        extracted_meta["tags"].append(href_slug)

            page_text = driver.find_element(By.TAG_NAME, "body").text

            genre_match = re.search(
                r"Genre[s]?\s*:\s*([^\n\r]+)", page_text, re.IGNORECASE
            )
            if genre_match:
                raw_genres = genre_match.group(1).split("|")
                for g in raw_genres:
                    g_clean = g.strip()
                    if g_clean and g_clean not in extracted_meta["genres"]:
                        extracted_meta["genres"].append(g_clean)

            stars_match = re.search(
                r"(?:Stars|Star Cast|Cast|Actors)\s*:\s*([^\n\r]+)",
                page_text,
                re.IGNORECASE,
            )
            if stars_match:
                raw_stars = re.split(r"[,|]", stars_match.group(1))
                for s in raw_stars:
                    s_clean = s.strip()
                    if s_clean and s_clean not in extracted_meta["actors"]:
                        extracted_meta["actors"].append(s_clean)

            dir_match = re.search(
                r"Director[s]?\s*:\s*([^\n\r]+)", page_text, re.IGNORECASE
            )
            if dir_match:
                extracted_meta["director"] = dir_match.group(1).strip()

            lang_match = re.search(
                r"Language[s]?\s*:\s*([^\n\r]+)", page_text, re.IGNORECASE
            )
            if lang_match:
                extracted_meta["language"] = lang_match.group(1).strip()

            qual_match = re.search(
                r"Quality\s*:\s*([^\n\r]+)", page_text, re.IGNORECASE
            )
            if qual_match:
                extracted_meta["quality"] = qual_match.group(1).strip()

            print(
                f"📊 Extracted Page Meta: Genres={extracted_meta['genres']}, Stars={len(extracted_meta['actors'])}, Badges={len(extracted_meta['tags'])}"
            )

        except Exception as meta_err:
            print(f"⚠️ Page metadata extraction warning: {meta_err}")

        link_element = None
        all_a_tags = driver.find_elements(By.TAG_NAME, "a")

        def get_anchor_meta(a_tag) -> str:
            t = a_tag.text or ""
            html = a_tag.get_attribute("outerHTML") or ""
            title_attr = a_tag.get_attribute("title") or ""
            href_attr = a_tag.get_attribute("href") or ""
            return f"{t} {html} {title_attr} {href_attr}".lower()

        # Pass 1: 1080p x264 / h264 links explicitly (excluding 480p/420p)
        for a in all_a_tags:
            href = (a.get_attribute("href") or "").lower()
            meta = get_anchor_meta(a)
            if (
                "1080p" in meta
                and ("x264" in meta or "h264" in meta or "h.264" in meta)
                and "480p" not in meta
                and "420p" not in meta
                and not any(bad in href for bad in BAD_DOMAINS_STEP1)
                and "/file/" not in href
            ):
                link_element = a
                print(f"🎯 Selected 1080p x264 download link: {a.text or href}")
                break

        # Pass 2: Any 1080p mediator or direct link
        if not link_element:
            for a in all_a_tags:
                href = (a.get_attribute("href") or "").lower()
                meta = get_anchor_meta(a)
                if (
                    "1080p" in meta
                    and "480p" not in meta
                    and "420p" not in meta
                    and not any(bad in href for bad in BAD_DOMAINS_STEP1)
                    and "/file/" not in href
                ):
                    link_element = a
                    print(f"🎯 Selected 1080p download link: {a.text or href}")
                    break

        # Pass 3: Fallback to 720p x264 links
        if not link_element:
            for a in all_a_tags:
                href = (a.get_attribute("href") or "").lower()
                meta = get_anchor_meta(a)
                if (
                    "720p" in meta
                    and ("x264" in meta or "h264" in meta or "h.264" in meta)
                    and "480p" not in meta
                    and "420p" not in meta
                    and not any(bad in href for bad in BAD_DOMAINS_STEP1)
                    and "/file/" not in href
                ):
                    link_element = a
                    print(
                        f"🎯 Selected 720p x264 fallback download link: {a.text or href}"
                    )
                    break

        # Pass 4: Fallback to any 720p links
        if not link_element:
            for a in all_a_tags:
                href = (a.get_attribute("href") or "").lower()
                meta = get_anchor_meta(a)
                if (
                    "720p" in meta
                    and "480p" not in meta
                    and "420p" not in meta
                    and not any(bad in href for bad in BAD_DOMAINS_STEP1)
                    and "/file/" not in href
                ):
                    link_element = a
                    print(f"🎯 Selected 720p fallback download link: {a.text or href}")
                    break

        if not link_element:
            err = "Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)"
            print(f"⚠️ {err}: {source_url}")
            return None, None, None, err, extracted_meta

        download_url = link_element.get_attribute("href")

        if (
            any(bad in download_url.lower() for bad in BAD_DOMAINS_STEP1)
            or "/file/" in download_url.lower()
        ):
            err = f"Step 1 selected an invalid link ({download_url})"
            print(f"⚠️ {err}. Skipping.")
            return None, None, None, err, extracted_meta

        # --- SMART DIRECT HUBCLOUD DETECTION ---
        is_direct_hubcloud = (
            "hubcloud" in download_url.lower() or "/drive/" in download_url.lower()
        ) and not any(bad in download_url.lower() for bad in BAD_DOMAINS_FINAL)

        if is_direct_hubcloud:
            print(
                f"🚀 Direct HubCloud link detected on post page: {download_url}. Bypassing mediator steps 2-7!"
            )
            hub_url = download_url
        else:
            # STEP 2
            print("[*] Step 2: Opening verification page...")
            driver.get(download_url)
            time.sleep(1)
            close_extra_ad_tabs(driver, main_window)

            # STEP 3
            print("[*] Step 3: Clicking 'CLICK TO CONTINUE'...")
            js_click_initial = """
            function clickInitial() {
                let btns = document.querySelectorAll('button, a');
                for (let b of btns) {
                    if (b.innerText && b.innerText.toUpperCase().includes('CLICK TO CONTINUE')) {
                        b.click();
                        return true;
                    }
                }
                return false;
            }
            return clickInitial();
            """
            for i in range(8):
                try:
                    if driver.execute_script(js_click_initial):
                        time.sleep(0.3)
                        close_extra_ad_tabs(driver, main_window)
                        break
                except:
                    pass
                time.sleep(0.4)

            # STEP 4: Wait timer
            print("[*] Step 4: Waiting for 10s timer...")
            time.sleep(10)
            close_extra_ad_tabs(driver, main_window)

            # STEP 5
            print("[*] Step 5: Clicking 'GET LINKS'...")
            js_click_getlinks = """
            function clickGetLinks() {
                let els = document.querySelectorAll('a, button, div');
                for (let el of els) {
                    if (el.innerText && el.innerText.trim().toUpperCase() === 'GET LINKS') {
                        el.removeAttribute('target');
                        el.click();
                        return true;
                    }
                }
                let iframes = document.querySelectorAll('iframe');
                for (let frame of iframes) {
                    try {
                        let doc = frame.contentDocument;
                        let els2 = doc.querySelectorAll('a, button, div');
                        for (let el of els2) {
                            if (el.innerText && el.innerText.trim().toUpperCase() === 'GET LINKS') {
                                el.removeAttribute('target');
                                el.click();
                                return true;
                            }
                        }
                    } catch(e) {}
                }
                return false;
            }
            return clickGetLinks();
            """
            for i in range(8):
                try:
                    if driver.execute_script(js_click_getlinks):
                        time.sleep(0.3)
                        close_extra_ad_tabs(
                            driver, main_window, allow_url_keywords=["hblinks"]
                        )
                        break
                except:
                    pass
                time.sleep(0.6)

            # STEP 6
            print("[*] Step 6: Getting HUBLinks URL...")
            time.sleep(1.2)
            # 🛡️ Sweep any ad tabs that snuck through before deciding which
            # window holds the real destination — only then is
            # window_handles[-1] safe to trust as "the new tab".
            close_extra_ad_tabs(
                driver,
                main_window,
                allow_url_keywords=["hblinks", "hubcloud", "hubdrive"],
            )
            hblinks_url = None

            if len(driver.window_handles) > 1:
                driver.switch_to.window(driver.window_handles[-1])
                for _ in range(6):
                    curr = driver.current_url
                    if (
                        curr
                        and curr != "about:blank"
                        and ("hblinks" in curr or "http" in curr)
                    ):
                        hblinks_url = curr
                        break
                    time.sleep(0.3)

            if not hblinks_url or hblinks_url == "about:blank":
                if (
                    "hblinks.co" in driver.current_url
                    or "hblinks" in driver.current_url
                ):
                    hblinks_url = driver.current_url
                else:
                    js_get_href = """
                    function findHref() {
                        let el = document.getElementById('get-link');
                        if (el && el.href && el.href.indexOf('hblinks') !== -1) return el.href;
                        let all = document.querySelectorAll('*');
                        for (let el of all) {
                            if (el.href && String(el.href).indexOf('hblinks') !== -1) return el.href;
                        }
                        return null;
                    }
                    return findHref();
                    """
                    for i in range(5):
                        href = driver.execute_script(js_get_href)
                        if href:
                            hblinks_url = href
                            break
                        time.sleep(0.3)

            if not hblinks_url or hblinks_url == "about:blank":
                hblinks_url = driver.current_url

            if (
                hblinks_url
                and hblinks_url != "about:blank"
                and driver.current_url != hblinks_url
            ):
                driver.get(hblinks_url)

            # STEP 7
            print("[*] Step 7: Finding HubCloud link...")
            close_extra_ad_tabs(
                driver, main_window, allow_url_keywords=["hblinks", "hubcloud", "hubdrive"]
            )
            hub_element = None

            for attempt in range(8):
                all_a_hblinks = driver.find_elements(By.TAG_NAME, "a")
                for a in all_a_hblinks:
                    href = (a.get_attribute("href") or "").lower()
                    text = (a.text or "").lower()
                    img_src = ""
                    img_alt = ""
                    try:
                        img = a.find_element(By.TAG_NAME, "img")
                        img_src = (img.get_attribute("src") or "").lower()
                        img_alt = (img.get_attribute("alt") or "").lower()
                    except:
                        pass

                    is_hubcloud = (
                        "hubcloud" in href
                        or "hubcloud" in text
                        or "hubcloud" in img_src
                        or "hubcloud" in img_alt
                        or "/drive/" in href
                        or "hubdrive" in href
                    )
                    is_bad = (
                        any(bad in href for bad in BAD_DOMAINS_FINAL)
                        or "/file/" in href
                    )

                    if is_hubcloud and not is_bad:
                        hub_element = a
                        break

                if not hub_element:
                    iframes = driver.find_elements(By.TAG_NAME, "iframe")
                    for frame in iframes:
                        try:
                            driver.switch_to.frame(frame)
                            frame_a_tags = driver.find_elements(By.TAG_NAME, "a")
                            for a in frame_a_tags:
                                href = (a.get_attribute("href") or "").lower()
                                text = (a.text or "").lower()
                                is_hubcloud = (
                                    "hubcloud" in href
                                    or "hubcloud" in text
                                    or "/drive/" in href
                                )
                                is_bad = (
                                    any(bad in href for bad in BAD_DOMAINS_FINAL)
                                    or "/file/" in href
                                )
                                if is_hubcloud and not is_bad:
                                    hub_element = a
                                    break
                            driver.switch_to.default_content()
                            if hub_element:
                                break
                        except:
                            driver.switch_to.default_content()

                if hub_element:
                    break
                time.sleep(0.6)

            if not hub_element:
                err = "HubCloud link not found on HUBLinks page"
                raise Exception(err)

            hub_url = hub_element.get_attribute("href")

        if (
            any(bad in hub_url.lower() for bad in BAD_DOMAINS_FINAL)
            or "/file/" in hub_url.lower()
        ):
            err = f"Extracted link is invalid/HubDrive ({hub_url})"
            raise Exception(err)

        # STEP 8: Fast Direct HTTP Bypass first
        movie_name, file_size = extract_hubcloud_via_http(hub_url)
        if movie_name and file_size and movie_name != "N/A" and file_size != "N/A":
            print(
                f"🚀 Extracted HubCloud data via direct Fast HTTP in 0.4s: {movie_name} [{file_size}]"
            )
        else:
            # Fallback to Selenium rendering if HTTP is blocked by Cloudflare
            print(f"[*] Step 8: Extracting clean data from HubCloud: {hub_url}")
            body_text = ""
            for cfl_attempt in range(3):
                driver.get(hub_url)
                time.sleep(2)
                close_extra_ad_tabs(driver, main_window, allow_url_keywords=["hubcloud"])
                body_text = ""
                for _ in range(6):
                    try:
                        body_text = driver.find_element(By.TAG_NAME, "body").text
                        if (
                            "GB" in body_text or "MB" in body_text or "KB" in body_text
                        ) and "Error code 522" not in body_text:
                            break
                    except:
                        pass
                    time.sleep(0.6)

                if (
                    "Error code 522" not in body_text
                    and "Connection timed out" not in body_text
                ):
                    break
                print(
                    f"⚠️ Cloudflare 522 detected on HubCloud page. Retrying attempt {cfl_attempt + 1}/3..."
                )
                time.sleep(1.5)

            if "Error code 522" in body_text or "Connection timed out" in body_text:
                raise Exception(
                    "Cloudflare 522 Timeout Error on HubCloud page (temporary server lag)"
                )

            movie_name = "N/A"
            try:
                raw_title = driver.find_element(
                    By.CSS_SELECTOR,
                    "div.card-header, div.bg-primary, center h4, h4.m-0, h1, h2, h3",
                ).text
                if raw_title and "connection timed out" not in raw_title.lower():
                    raw_title = clean_movie_name(raw_title)
                    parts = raw_title.split(".")
                    title_parts = []
                    for part in parts:
                        if part.lower() in [
                            "1080p",
                            "720p",
                            "4k",
                            "web-dl",
                            "webrip",
                            "bluray",
                        ]:
                            break
                        title_parts.append(part)
                    if title_parts:
                        movie_name = ".".join(title_parts)
            except:
                match = re.search(r"([A-Za-z0-9]+(?:\.[A-Za-z0-9]+){1,3})", body_text)
                if match:
                    movie_name = clean_movie_name(match.group(1))

            movie_name = clean_movie_name(movie_name)

            file_size = "N/A"
            size_match = re.search(
                r"(\d+\.\d+|\d+)\s*(GB|MB|KB)", body_text, re.IGNORECASE
            )
            if size_match:
                file_size = size_match.group(0)

        if file_size == "N/A":
            raise Exception("Could not extract valid file size from HubCloud page")

        print("\n" + "=" * 40)
        print("✅ PROCESS COMPLETE!")
        print(f"🎬 Movies Name : {movie_name}")
        print(f"📦 File Size   : {file_size}")
        print(f"🔗 HubCloud URL: {hub_url}")
        print("=" * 40 + "\n")

        return hub_url, movie_name, file_size, None, extracted_meta

    except Exception as e:
        err_msg = str(e)
        print(f"❌ ERROR for {source_url}: {err_msg}")
        return None, None, None, err_msg, extracted_meta
    finally:
        try:
            driver.quit()
        except:
            pass


def fetch_netlify_source_urls() -> Dict[str, str]:
    url_map = {}
    try:
        req = urllib.request.Request(
            "https://devdownloaderdetabase.netlify.app/",
            headers={"User-Agent": "Mozilla/5.0"},
        )
        with urllib.request.urlopen(req) as resp:
            html = resp.read().decode("utf-8")

        db_match = re.search(
            r"(?:const|var|window\.)?\s*DB\s*=\s*(\[\s*\{[\s\S]*?\}\s*\]);", html
        )
        if db_match:
            db_entries = json.loads(db_match[1])
            for entry in db_entries:
                t = entry.get("t") or ""
                u = entry.get("u") or entry.get("l") or entry.get("link") or ""
                y = str(entry.get("y") or entry.get("year") or "").strip()
                if t and u:
                    norm = normalize_title(t)
                    u_fixed = re.sub(
                        r"https?://[^/]*hdhub4u[^/]*/",
                        "https://new5.hdhub4u.cl/",
                        u,
                    )
                    if y:
                        url_map[f"{norm}_{y}"] = u_fixed
                    url_map[norm] = u_fixed
    except Exception as e:
        print(f"⚠️ Could not fetch Netlify site URLs: {e}")
    return url_map


def _process_single_movie_worker(
    movie: Dict[str, Any], netlify_urls: Dict[str, str], cat_map: Dict[str, str]
):
    """Worker function for parallel multi-threaded scraping of a single movie."""
    title = movie.get("title")
    m_id = movie.get("id")
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
        source_url = re.sub(
            r"https?://[^/]*hdhub4u[^/]*/",
            "https://new5.hdhub4u.cl/",
            source_url,
        )

    try:
        hub_url, name, file_size, err_reason, extracted_meta = scrape_movie_link(
            source_url, headless=True
        )

        is_valid_hubcloud = (
            hub_url
            and ("hubcloud" in hub_url.lower() or "/drive/" in hub_url.lower())
            and not any(bad in hub_url.lower() for bad in BAD_DOMAINS_FINAL)
            and file_size
            and file_size != "N/A"
        )

        if is_valid_hubcloud:
            save_movie_data_to_supabase(
                m_id, title, hub_url, file_size, extracted_meta, movie, cat_map
            )
        else:
            reason = err_reason or "1080p/720p HubCloud link not found on HDHub4u"
            is_transient_error = "Cloudflare 522" in reason or "temporary" in reason

            if is_transient_error:
                print(
                    f"⚠️ Transient error for '{title}': {reason}. Keeping status = 'active' for auto-retry."
                )
                send_telegram_alert(
                    title,
                    movie.get("release_year"),
                    source_url,
                    reason,
                    action_text="Kept ACTIVE for Auto-Retry",
                )
            else:
                print(
                    f"⚠️ Discarded invalid link for '{title}'. Setting status = 'inactive'. Reason: {reason}"
                )

                # Save all extracted metadata & category badges (Genres, Languages, Platforms, Quality) BEFORE setting inactive
                if extracted_meta and (
                    extracted_meta.get("tags")
                    or extracted_meta.get("genres")
                    or extracted_meta.get("language")
                    or extracted_meta.get("quality")
                ):
                    try:
                        save_movie_metadata_and_categories_only(
                            m_id, title, extracted_meta, movie, cat_map
                        )
                    except Exception as meta_save_err:
                        print(
                            f"⚠️ Could not save category badges before setting inactive for '{title}': {meta_save_err}"
                        )

                try:
                    supabase.from_("movies").update({"status": "inactive"}).eq(
                        "id", m_id
                    ).execute()
                    print(
                        f"🚫 Marked '{title}' (ID: {m_id}) as INACTIVE in Supabase DB."
                    )
                except Exception as db_err:
                    print(f"⚠️ Could not set status to inactive: {db_err}")

                send_telegram_alert(
                    title,
                    movie.get("release_year"),
                    source_url,
                    reason,
                    action_text="Set status to INACTIVE",
                )

    except Exception as err:
        err_str = str(err)
        print(f"⚠️ Error processing '{title}': {err_str}")
        send_telegram_alert(
            title,
            movie.get("release_year"),
            source_url,
            err_str,
            action_text="Set status to INACTIVE",
        )


def process_batch_missing_links():
    if not supabase:
        print(
            "❌ Supabase client not configured. Set SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY."
        )
        return

    cat_map = fetch_categories_map(supabase)

    # Auto-cleanup any previously saved invalid / ad / corrupt entries from Supabase DB
    try:
        supabase.from_("movies").update({"download_url": None, "file_size": None}).or_(
            "download_url.ilike.%yodrive%,download_url.ilike.%linkrit%,download_url.ilike.%hdhub4u.af%,download_url.ilike.%hubcloud.fans%"
        ).execute()
    except Exception as err:
        pass

    print(
        "🔎 Checking Supabase DB for ACTIVE movies missing download_url or file_size (Newest to Oldest)..."
    )

    res = (
        supabase.from_("movies")
        .select("id, title, release_year, genres, quality, language, status, download_url, file_size")
        .or_("status.eq.active,status.is.null")
        .or_("download_url.is.null,download_url.eq.,file_size.is.null,file_size.eq.")
        .order("created_at", desc=True)
        .limit(100)
        .execute()
    )
    raw_movies = res.data or []

    # Process 30 movies per batch run (with cron-job.org API dispatch & 5 workers = ~3 min execution time)
    movies = [
        m
        for m in raw_movies
        if m.get("status") in [None, "active"]
        and m.get("download_url") != "NOT_FOUND"
        and (not m.get("download_url") or not m.get("file_size"))
    ][:30]

    if not movies:
        print(
            "✨ All active movies in database already have 1080p/720p download links & file sizes!"
        )
        return

    print(
        f"📌 Found {len(movies)} active movie(s) needing download links & file sizes. Launching 5 parallel workers..."
    )
    netlify_urls = fetch_netlify_source_urls()

    # Launch 5 Parallel Workers for ultra-fast 1.5-min batch completion
    start_time = time.time()
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = [
            executor.submit(_process_single_movie_worker, movie, netlify_urls, cat_map)
            for movie in movies
        ]
        for future in as_completed(futures):
            try:
                future.result()
            except Exception as e:
                print(f"⚠️ Parallel worker exception: {e}")

    elapsed = round(time.time() - start_time, 2)
    print(
        f"⚡ Batch Processing Complete! {len(movies)} movies processed in {elapsed} seconds!"
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Movie Download Link Scraper & DB Enricher"
    )
    parser.add_argument("--url", type=str, help="Specific source URL to scrape")
    args = parser.parse_args()

    if args.url:
        hub_url, name, file_size, err_reason, extracted_meta = scrape_movie_link(
            args.url
        )
        is_valid_hubcloud = (
            hub_url
            and ("hubcloud" in hub_url.lower() or "/drive/" in hub_url.lower())
            and not any(bad in hub_url.lower() for bad in BAD_DOMAINS_FINAL)
            and file_size
            and file_size != "N/A"
        )
        if is_valid_hubcloud and supabase:
            clean_scraped_title = re.sub(r"[._]", " ", name).strip()
            clean_no_year = re.sub(r"\b(19|20)\d{2}\b", "", clean_scraped_title).strip()
            norm_scraped = normalize_title(clean_no_year)

            url_slug = args.url.strip("/").split("/")[-1]
            slug_words = [
                w
                for w in url_slug.split("-")
                if w.lower()
                not in [
                    "2026",
                    "2025",
                    "2024",
                    "hindi",
                    "english",
                    "webrip",
                    "bluray",
                    "full",
                    "movie",
                    "hd",
                    "720p",
                    "1080p",
                ]
                and len(w) >= 2
            ]

            search_word = slug_words[-1] if slug_words else "movie"
            if len(search_word) <= 2 and len(slug_words) > 1:
                search_word = slug_words[0]

            print(
                f"🔎 Searching Supabase DB (8000+ movies) for target matching '{clean_no_year}' (word: '{search_word}')..."
            )
            try:
                res = (
                    supabase.from_("movies")
                    .select("id, title, slug, genres, quality, language")
                    .or_(f"title.ilike.*{search_word}*,slug.ilike.*{search_word}*")
                    .limit(50)
                    .execute()
                )
                candidate_movies = res.data or []

                matched_movies = []
                for m in candidate_movies:
                    m_norm = normalize_title(m.get("title") or "")
                    m_slug_norm = normalize_title(m.get("slug") or "")
                    if norm_scraped and (
                        m_norm == norm_scraped or m_slug_norm == norm_scraped
                    ):
                        matched_movies.append(m)
                        break

                if not matched_movies and norm_scraped:
                    for m in candidate_movies:
                        m_norm = normalize_title(m.get("title") or "")
                        if norm_scraped in m_norm or m_norm in norm_scraped:
                            matched_movies.append(m)
                            break

                if matched_movies:
                    target_movie = matched_movies[0]
                    cat_map = fetch_categories_map(supabase)
                    save_movie_data_to_supabase(
                        target_movie["id"],
                        target_movie["title"],
                        hub_url,
                        file_size,
                        extracted_meta,
                        target_movie,
                        cat_map,
                    )
                else:
                    print(
                        f"ℹ️ Scrape complete. (Movie '{clean_scraped_title}' not found in candidates for direct --url update)"
                    )
            except Exception as db_err:
                print(f"⚠️ Supabase search info: {db_err}")
    else:
        process_batch_missing_links()
