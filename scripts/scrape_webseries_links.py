import os
import re
import sys
import time
import json
import argparse
import urllib.parse
from typing import Optional, Tuple, Dict, Any, List, Set

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from scrape_download_links import (
    get_pooled_driver,
    quit_all_pooled_drivers,
    fetch_netlify_source_urls,
    clean_title_for_search,
    normalize_title,
    resolve_hubdrive_page,
    BAD_DOMAINS_FINAL,
    BAD_DOMAINS_STEP1,
)


def extract_size_from_text(text: str) -> Optional[str]:
    """Extracts file size string (e.g. '1.2 GB', '450 MB') from link text."""
    if not text:
        return None
    match = re.search(r"(\d+(?:\.\d+)?\s*(?:GB|MB|gb|mb))", text)
    if match:
        return match.group(1).upper()
    return None


def scrape_webseries_season_links(
    source_url: str,
    season_number: int = 1,
    headless: bool = True,
    driver: Optional[webdriver.Chrome] = None,
    series_title: str = "WebSeries",
    log_prefix: str = "",
) -> Tuple[Dict[str, Any], Dict[int, Dict[str, Any]], Optional[str], Dict[str, Any]]:
    """
    Scrapes a WebSeries page on HDHub4u for Season Zip links and Episode links.
    Returns:
      - season_links: {"url_720p", "url_1080p", "size_720p", "size_1080p"}
      - episode_links: { ep_num: {"url_720p", "url_1080p", "size_720p", "size_1080p"} }
      - err_reason: str or None
      - extracted_meta: dict
    """
    own_driver = False
    if driver is None:
        driver = get_pooled_driver(headless=headless)
        own_driver = True

    season_links = {"url_720p": None, "url_1080p": None, "size_720p": None, "size_1080p": None}
    episode_links = {}
    extracted_meta = {"genres": [], "actors": [], "director": None, "quality": None, "tags": []}
    err_reason = None

    try:
        print(f"{log_prefix}[*] Opening series page for '{series_title}' (S{season_number}): {source_url}")
        driver.get(source_url)
        time.sleep(2)

        # Check for 0 search results page
        if "0 search results" in driver.page_source.lower() or "nothing found" in driver.page_source.lower():
            err_reason = "Search yielded 0 results on HDHub4u"
            return season_links, episode_links, err_reason, extracted_meta

        # If on search results page, pick first matching entry link
        if "/?s=" in driver.current_url or "search" in driver.current_url.lower():
            cards = driver.find_elements(By.CSS_SELECTOR, "figure a, div.post-thumbnail a, h2.entry-title a")
            target_link = None
            norm_series = normalize_title(series_title)

            for c in cards:
                href = c.get_attribute("href")
                text = (c.text or c.get_attribute("title") or "").strip()
                if href and "hdhub4u" in href.lower() and not any(b in href.lower() for b in BAD_DOMAINS_STEP1):
                    if norm_series in normalize_title(text) or f"season {season_number}" in text.lower() or f"s{season_number}" in text.lower():
                        target_link = href
                        break
            if not target_link and cards:
                target_link = cards[0].get_attribute("href")

            if target_link:
                print(f"{log_prefix}[*] Navigating to target series post: {target_link}")
                driver.get(target_link)
                time.sleep(2)
            else:
                err_reason = "No valid series post link found in search results"
                return season_links, episode_links, err_reason, extracted_meta

        # Extract metadata from page
        body_text = driver.find_element(By.TAG_NAME, "body").text
        # Extract genres/tags
        meta_matches = re.findall(r"(?:Genre|Genres|Category):\s*([^\n]+)", body_text, re.IGNORECASE)
        if meta_matches:
            extracted_meta["genres"] = [g.strip() for g in meta_matches[0].split(",") if g.strip()]

        # Collect all download buttons/links on the post page
        link_elements = driver.find_elements(By.CSS_SELECTOR, "a[href*='hublinks'], a[href*='drive'], a[href*='hubcloud'], a.btn, p a")

        season_zip_candidates = []
        episode_candidates = []

        for el in link_elements:
            try:
                href = el.get_attribute("href")
                txt = (el.text or "").strip()
                if not href or any(b in href.lower() for b in BAD_DOMAINS_STEP1):
                    continue

                low_txt = txt.lower()
                size_str = extract_size_from_text(txt)

                is_1080 = "1080p" in low_txt or "1080" in low_txt
                is_720 = "720p" in low_txt or "720" in low_txt or "480p" not in low_txt

                # Check if Season Zip Pack
                if "zip" in low_txt or "pack" in low_txt or "full season" in low_txt or "complete" in low_txt:
                    season_zip_candidates.append({
                        "href": href,
                        "text": txt,
                        "is_1080": is_1080,
                        "is_720": is_720,
                        "size": size_str,
                    })

                # Check if Episode link (e.g. Ep 01, Episode 1, E01)
                ep_match = re.search(r"(?:ep|episode|e)\s*0*(\d+)", low_txt)
                if ep_match:
                    ep_num = int(ep_match.group(1))
                    episode_candidates.append({
                        "ep_num": ep_num,
                        "href": href,
                        "text": txt,
                        "is_1080": is_1080,
                        "is_720": is_720,
                        "size": size_str,
                    })
            except Exception:
                continue

        # Resolve Season Zip Links
        for cand in season_zip_candidates:
            resolved_url, res_size, err = resolve_hubdrive_page(cand["href"], driver, f"{log_prefix}[SeasonZip] ")
            if resolved_url and not any(b in resolved_url.lower() for b in BAD_DOMAINS_FINAL):
                final_size = res_size or cand["size"]
                if cand["is_1080"] and not season_links["url_1080p"]:
                    season_links["url_1080p"] = resolved_url
                    season_links["size_1080p"] = final_size
                elif cand["is_720"] and not season_links["url_720p"]:
                    season_links["url_720p"] = resolved_url
                    season_links["size_720p"] = final_size

        # Resolve Episode Links
        for cand in episode_candidates:
            ep_num = cand["ep_num"]
            ep_dict = episode_links.setdefault(ep_num, {"url_720p": None, "url_1080p": None, "size_720p": None, "size_1080p": None})

            if (cand["is_1080"] and not ep_dict["url_1080p"]) or (cand["is_720"] and not ep_dict["url_720p"]):
                resolved_url, res_size, err = resolve_hubdrive_page(cand["href"], driver, f"{log_prefix}[Ep{ep_num}] ")
                if resolved_url and not any(b in resolved_url.lower() for b in BAD_DOMAINS_FINAL):
                    final_size = res_size or cand["size"]
                    if cand["is_1080"] and not ep_dict["url_1080p"]:
                        ep_dict["url_1080p"] = resolved_url
                        ep_dict["size_1080p"] = final_size
                    elif cand["is_720"] and not ep_dict["url_720p"]:
                        ep_dict["url_720p"] = resolved_url
                        ep_dict["size_720p"] = final_size

        if not season_links["url_720p"] and not season_links["url_1080p"] and not episode_links:
            err_reason = "No valid HubCloud download links found for Season/Episodes"

    except Exception as e:
        err_reason = f"Scraper Exception: {e}"
        print(f"{log_prefix}⚠️ Exception during webseries scraping: {e}")

    return season_links, episode_links, err_reason, extracted_meta
