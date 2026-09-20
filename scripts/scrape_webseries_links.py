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
    is_valid_direct_hubcloud,
    BAD_DOMAINS_FINAL,
    BAD_DOMAINS_STEP1,
)


def extract_size_from_text(text: str) -> Optional[str]:
    """Extracts file size string (e.g. '1.2 GB', '450 MB') from link text."""
    if not text:
        return None
    match = re.search(r"(\d+(?:\.\d+)?\s*(?:GB|MB|gb|mb))", text, re.IGNORECASE)
    if match:
        return match.group(0).upper()
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
    Scrapes a WebSeries page on HDHub4u for Season Zip links and Single Episode links.
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
        print(f"{log_prefix}[*] Opening series page for '{series_title}' (S{season_number}): {source_url}", flush=True)
        driver.get(source_url)
        time.sleep(2)

        # Check for 0 search results page
        if "0 search results" in driver.page_source.lower() or "nothing found" in driver.page_source.lower():
            err_reason = "Search yielded 0 results on HDHub4u"
            return season_links, episode_links, err_reason, extracted_meta

        # If search URL, construct proper search.html?q=... if needed and wait for AJAX
        if "/?s=" in driver.current_url:
            q_val = urllib.parse.parse_qs(urllib.parse.urlparse(driver.current_url).query).get("s", [""])[0]
            if q_val:
                search_url = f"https://new6.hdhub4u.cl/search.html?q={urllib.parse.quote(q_val)}"
                driver.get(search_url)
                time.sleep(3)

        if "search" in driver.current_url.lower():
            time.sleep(3) # Wait for AJAX 'Loading results...' to finish

            # Check for 0 search results page
            if "0 search results" in driver.page_source.lower() or "nothing found" in driver.page_source.lower():
                err_reason = "Search yielded 0 results on HDHub4u"
                return season_links, episode_links, err_reason, extracted_meta

            all_search_anchors = driver.find_elements(By.TAG_NAME, "a")
            target_link = None
            norm_series = normalize_title(series_title)
            season_str = f"season {season_number}"
            s_short = f"s{season_number}"

            best_match = None
            series_match = None

            for a in all_search_anchors:
                href = (a.get_attribute("href") or "").strip()
                text = (a.text or a.get_attribute("title") or "").strip()
                low_href = href.lower()
                low_text = text.lower()

                # Skip non-post links
                if not href or not href.startswith("http"):
                    continue
                if any(x in low_href for x in ["/search", "/category/", "/how-to-download", "/tag/", "/page/"]) or low_href.rstrip('/') in ["https://new6.hdhub4u.cl", "https://new5.hdhub4u.cl"]:
                    continue

                norm_txt = normalize_title(text) or normalize_title(href)

                has_season = (season_str in low_text or s_short in low_text or f"season-{season_number}" in low_href or f"s0{season_number}" in low_text)
                has_series = (norm_series in norm_txt)

                if has_series and has_season:
                    best_match = href
                    break
                elif has_series and not series_match:
                    series_match = href
                elif has_season and not series_match:
                    series_match = href

            target_link = best_match or series_match

            if not target_link:
                # Fallback to first non-utility anchor
                for a in all_search_anchors:
                    href = (a.get_attribute("href") or "").strip()
                    low_href = href.lower()
                    if href and href.startswith("http") and not any(x in low_href for x in ["/search", "/category/", "/how-to-download", "/tag/"]) and low_href.rstrip('/') not in ["https://new6.hdhub4u.cl", "https://new5.hdhub4u.cl"]:
                        target_link = href
                        break

            if target_link:
                print(f"{log_prefix}[*] Navigating to target series post: {target_link}", flush=True)
                driver.get(target_link)
                time.sleep(2)
            else:
                err_reason = "No valid series post link found in search results"
                return season_links, episode_links, err_reason, extracted_meta

        # Extract metadata from page
        body_text = driver.find_element(By.TAG_NAME, "body").text
        meta_matches = re.findall(r"(?:Genre|Genres|Category):\s*([^\n]+)", body_text, re.IGNORECASE)
        if meta_matches:
            extracted_meta["genres"] = [g.strip() for g in meta_matches[0].split(",") if g.strip()]

        all_anchors = driver.find_elements(By.TAG_NAME, "a")

        season_zip_candidates_720 = []
        season_zip_candidates_1080 = []
        drive_episode_anchors = []

        for a in all_anchors:
            try:
                href = (a.get_attribute("href") or "").strip()
                txt = (a.text or a.get_attribute("title") or "").strip()
                if not href or any(b in href.lower() for b in BAD_DOMAINS_STEP1):
                    continue

                low_txt = txt.lower()

                # STRICTLY REJECT 4K / 2160p / 2100p / 480p / 420p
                if any(bad_q in low_txt for bad_q in ["4k", "2160p", "2100p", "480p", "420p"]):
                    continue

                # Is this a single episode Drive link e.g. "Drive" or "[Drive]"?
                if low_txt in ["drive", "[drive]", "drive | instant"] or ("drive" in low_txt and not any(k in low_txt for k in ["zip", "pack", "full season", "complete"])):
                    drive_episode_anchors.append(a)
                    continue

                # Check if Season Zip Candidate
                size_str = extract_size_from_text(txt)
                is_x264 = "x264" in low_txt or "h264" in low_txt

                if "720p" in low_txt or "720" in low_txt:
                    season_zip_candidates_720.append({
                        "href": href,
                        "text": txt,
                        "is_x264": is_x264,
                        "size": size_str,
                    })
                elif "1080p" in low_txt or "1080" in low_txt:
                    season_zip_candidates_1080.append({
                        "href": href,
                        "text": txt,
                        "is_x264": is_x264,
                        "size": size_str,
                    })
            except Exception:
                continue

        # Sort season zip candidates so x264 is preferred over HEVC
        season_zip_candidates_720.sort(key=lambda c: 0 if c["is_x264"] else 1)
        season_zip_candidates_1080.sort(key=lambda c: 0 if c["is_x264"] else 1)

        # Resolve Season Zip 720p
        for cand in season_zip_candidates_720:
            resolved_url, res_size, err = resolve_hubdrive_page(cand["href"], driver, f"{log_prefix}[SeasonZip 720p] ")
            if resolved_url and is_valid_direct_hubcloud(resolved_url):
                season_links["url_720p"] = resolved_url
                season_links["size_720p"] = res_size or cand["size"]
                break

        # Resolve Season Zip 1080p
        for cand in season_zip_candidates_1080:
            resolved_url, res_size, err = resolve_hubdrive_page(cand["href"], driver, f"{log_prefix}[SeasonZip 1080p] ")
            if resolved_url and is_valid_direct_hubcloud(resolved_url):
                season_links["url_1080p"] = resolved_url
                season_links["size_1080p"] = res_size or cand["size"]
                break

        # --- PROCESS SINGLE EPISODES ---
        ep_candidates_map = {}
        current_ep = 1

        for idx, a in enumerate(drive_episode_anchors):
            try:
                href = a.get_attribute("href")
                a_txt = (a.text or "").strip()

                parent_text = ""
                try:
                    parent_text = (a.find_element(By.XPATH, "..").text or "").strip()
                except Exception:
                    pass

                ep_match = re.search(r"(?:EPISODE|EP|E)\s*0*(\d+)", parent_text, re.IGNORECASE)
                if ep_match:
                    current_ep = int(ep_match.group(1))
                else:
                    current_ep = (idx // 2) + 1

                ep_entry = ep_candidates_map.setdefault(current_ep, {
                    "cand_720p": None,
                    "cand_1080p": None,
                    "size_720p": None,
                    "size_1080p": None,
                })

                is_1080 = "1080p" in parent_text.lower() or "1080p" in a_txt.lower()
                is_720 = "720p" in parent_text.lower() or "720p" in a_txt.lower() or not is_1080

                if is_1080 and not ep_dict["cand_1080p"]:
                    ep_entry["cand_1080p"] = href
                    ep_entry["size_1080p"] = extract_size_from_text(parent_text) or extract_size_from_text(a_txt)
                elif is_720 and not ep_dict["cand_720p"]:
                    ep_entry["cand_720p"] = href
                    ep_entry["size_720p"] = extract_size_from_text(parent_text) or extract_size_from_text(a_txt)
            except Exception:
                continue

        # Resolve Single Episode Candidates
        for ep_num, cands in sorted(ep_candidates_map.items()):
            ep_res = episode_links.setdefault(ep_num, {
                "url_720p": None,
                "url_1080p": None,
                "size_720p": None,
                "size_1080p": None,
            })

            if cands["cand_720p"]:
                res_url, res_sz, _ = resolve_hubdrive_page(cands["cand_720p"], driver, f"{log_prefix}[Ep{ep_num} 720p] ")
                if res_url and is_valid_direct_hubcloud(res_url):
                    ep_res["url_720p"] = res_url
                    ep_res["size_720p"] = res_sz or cands["size_720p"]

            if cands["cand_1080p"]:
                res_url, res_sz, _ = resolve_hubdrive_page(cands["cand_1080p"], driver, f"{log_prefix}[Ep{ep_num} 1080p] ")
                if res_url and is_valid_direct_hubcloud(res_url):
                    ep_res["url_1080p"] = res_url
                    ep_res["size_1080p"] = res_sz or cands["size_1080p"]

        if not season_links["url_720p"] and not season_links["url_1080p"] and not episode_links:
            err_reason = "No valid HubCloud download links found for Season/Episodes"

    except Exception as e:
        err_reason = f"Scraper Exception: {e}"
        print(f"{log_prefix}⚠️ Exception during webseries scraping: {e}", flush=True)

    return season_links, episode_links, err_reason, extracted_meta
