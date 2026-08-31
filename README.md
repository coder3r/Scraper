# Dev Downloader Scraper

Automated content scraper and link extractor for movie/series databases. Fetches movie metadata from TMDB, scrapes download links from HDHub4u with mediator chain navigation, and enriches a Supabase database with movie details and download URLs.

## Features

- **🎬 Automated Content Sync**: Fulfills user content requests and syncs with external Netlify database
- **🔗 Smart Link Scraping**: Uses Selenium to navigate complex mediator verification chains and extract HubCloud download URLs
- **🎯 TMDB Integration**: Imports rich metadata (cast, genres, trailers, posters, runtime) from The Movie Database API
- **🗄️ Database Enrichment**: Automatically updates Supabase with download URLs, file sizes, and metadata
- **📊 Batch Processing**: Parallel workers (5 threads) process movies concurrently for 1.5-3 min batch completion
- **🚀 Performance Optimized**: 
  - Persistent Chrome driver pool reused across movies (~2-5s per movie vs 5-8s with fresh browser)
  - Network-level ad/popup blocking via Chrome DevTools Protocol
  - Direct HTTP extraction with Cloudflare fallback
- **📡 Smart Notifications**: Telegram digest summaries and debug snapshots on structural failures
- **⏳ Auto-Retry Logic**: Transient Cloudflare errors keep movies active for auto-retry

## Stack

- **Language(s)**: Python (70.9%), JavaScript (29.1%)
- **Runtime**: Node.js 22 + Python 3.11
- **Key Libraries**:
  - `selenium` + `webdriver-manager` — Chrome automation & link extraction
  - `supabase` — Database client (movies, web_series, categories, requests)
  - `requests` + `urllib` — HTTP operations
  - `@supabase/supabase-js` — Node.js Supabase client
- **CI/CD**: GitHub Actions (runs on schedule every 15 min)

## How It's Organized

```
scripts/
  scrape_download_links.py    Main Python scraper — Selenium link extraction, mediator navigation
  auto-sync.js                Node.js task runner — TMDB imports, user requests, Netlify sync
  requirements.txt            Python dependencies

.github/workflows/
  auto-sync.yml               Scheduled workflow (every 15 min) — runs both scripts
```

**How it fits together:**

1. **`auto-sync.js`** (Node.js) runs first to fulfill user requests and scrape new titles from Netlify
2. **`scrape_download_links.py`** (Python) runs second with 5 parallel workers to extract download links for active movies
3. Both scripts connect to the same Supabase database and post status updates to Telegram
4. The workflow runs on a cron schedule (7, 22, 37, 52 minutes every hour) to avoid GitHub's global queue throttling

## How to Run It

### Prerequisites

- Python 3.11+
- Node.js 22+
- Environment variables:
  ```
  SUPABASE_URL              # Supabase project URL
  SUPABASE_SERVICE_ROLE_KEY # Service role key (admin access)
  TMDB_API_KEY              # The Movie Database API key
  TELEGRAM_BOT_TOKEN        # Optional: Telegram bot token for alerts
  TELEGRAM_ADMIN_CHAT_ID    # Optional: Admin chat ID for notifications
  ```

### Installation & Setup

```bash
# Clone repository
git clone https://github.com/coder3r/Scraper.git
cd Scraper

# Install Python dependencies
pip install -r scripts/requirements.txt

# Install Node dependencies
npm install @supabase/supabase-js

# Create .env with your credentials
echo "SUPABASE_URL=..." >> .env
echo "SUPABASE_SERVICE_ROLE_KEY=..." >> .env
echo "TMDB_API_KEY=..." >> .env
```

### Running Locally

**Sync user requests and Netlify content:**
```bash
node scripts/auto-sync.js
```

**Scrape download links for active movies (batch mode):**
```bash
python scripts/scrape_download_links.py
```

**Scrape a specific movie URL:**
```bash
python scripts/scrape_download_links.py --url "https://new5.hdhub4u.cl/desert-bloom-1986-webrip-hindi-full-movie/"
```

### Running in GitHub Actions

The workflow runs automatically on schedule (every 15 minutes) and on code push. To trigger manually:

1. Go to **Actions** → **Dev Downloader Auto Sync & Link Scraper**
2. Click **Run workflow** → **Run workflow**

## Database Schema

### Core Tables

- **`movies`** — Movie metadata (title, TMDB ID, poster, genres, cast, download URL, file size, status)
- **`web_series`** — TV series metadata (name, seasons, TMDB ID, poster, cast, status)
- **`categories`** — Content categories (Bollywood, Action, Horror, etc.)
- **`movie_categories`** — Junction table linking movies to multiple categories
- **`contact_submissions`** — User content requests via contact form
- **`content_requests`** — User content requests from dedicated form
- **`bot_queue`** — Checkpoint cache for Netlify sync state

## Key Behaviors

### Link Scraping (Python)

The scraper navigates a 7-step mediator chain to extract HubCloud links:

1. **Step 1** — Main page: Find best quality (1080p x264 > 1080p > 720p x264 > 720p) download button
2. **Step 2** — Open mediator verification page
3. **Step 3** — Click "CLICK TO CONTINUE" button
4. **Step 4** — Wait 10+ seconds for server-side verification (non-negotiable)
5. **Step 5** — Click "GET LINKS" button
6. **Step 6** — Capture HUBLinks redirect tab
7. **Step 7** — Extract final HubCloud/drive URL from HUBLinks
8. **Step 8** — Extract movie title & file size from HubCloud (HTTP or Selenium fallback)

**Smart Shortcuts:**
- Direct HubCloud links on post page skip steps 2-7 entirely
- Cloudflare 522 errors trigger automatic 3-attempt retry
- Transient errors keep movies active for next batch instead of marking inactive

### Auto-Sync (Node.js)

1. **Fulfills contact form submissions** — Auto-import from TMDB if not already in DB
2. **Scrapes Netlify site** — Extracts recent uploads using checkpoint cache
3. **Syncs checkpoint** — Saves top Netlify item to avoid re-processing

### Category Enrichment

Post metadata (genres, quality, language, tags) automatically matched to category badges before marking inactive.

## Troubleshooting

### "Search yielded 0 results"
HDHub4u changed site structure or removed the movie. Check if the post still exists on the site.

### "HubCloud link not found on HUBLinks page"
Mediator chain structure changed. Set `DEBUG_MAX_SNAPSHOTS_PER_RUN=3` to get Telegram screenshots of the failure.

### "Cloudflare 522 Timeout Error"
Temporary server lag — movie keeps active for auto-retry next batch. Check [Cloudflare status](https://www.cloudflarestatus.com/).

### Supabase connection fails
Verify `SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY` in `.env`. Service role key (not anon key) is required.

## Support & Documentation

- **Issues** — [GitHub Issues](https://github.com/coder3r/Scraper/issues)
- **TMDB API** — [themoviedb.org/settings/api](https://www.themoviedb.org/settings/api)
- **Supabase Docs** — [supabase.com/docs](https://supabase.com/docs)

## Contributing

Contributions welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

See [LICENSE](LICENSE) file for details.

## Maintainer

**@coder3r** — [GitHub Profile](https://github.com/coder3r)

---

**Last Updated:** August 2026  
**Status:** Active — Running scheduled syncs every 15 minutes
