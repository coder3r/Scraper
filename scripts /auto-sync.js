import { createClient } from "@supabase/supabase-js";

// Credentials from Environment
const SUPABASE_URL =
  process.env.SUPABASE_URL ||
  process.env.VITE_SUPABASE_URL ||
  "https://gorzuynmwwsscoovtvyr.supabase.co";
const SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const TMDB_API_KEY = process.env.TMDB_API_KEY;
const TELEGRAM_BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN;
const TELEGRAM_ADMIN_CHAT_ID = process.env.TELEGRAM_ADMIN_CHAT_ID;

if (!SUPABASE_URL || !SUPABASE_SERVICE_ROLE_KEY) {
  console.error("❌ Missing SUPABASE_URL & SUPABASE_SERVICE_ROLE_KEY in env");
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY, {
  auth: { persistSession: false },
  realtime: { enabled: false },
});

// Helper: Telegram Notification
async function sendTelegramMessage(chatId, text) {
  if (!TELEGRAM_BOT_TOKEN || !chatId) return;
  try {
    await fetch(
      `https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          chat_id: chatId,
          text,
          parse_mode: "HTML",
          disable_web_page_preview: true,
        }),
      },
    );
  } catch (e) {
    console.error("Telegram send error:", e.message);
  }
}

// Slug Generator
function slugify(text) {
  return text
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

// Normalize title for accurate matching (strips leading 'the ', punctuation, spaces)
function normalizeTitle(str) {
  if (!str) return "";
  return str
    .toLowerCase()
    .replace(/^the\s+/i, "")
    .replace(/[^a-z0-9]/g, "")
    .trim();
}

// Strict Title Similarity Matcher (prevents picking wrong movies/series)
function isTitleMatch(targetTitle, candidateTitle, candidateOrigTitle) {
  const normTarget = normalizeTitle(targetTitle);
  const normCand = normalizeTitle(candidateTitle);
  const normOrig = normalizeTitle(candidateOrigTitle);

  if (!normTarget || (!normCand && !normOrig)) return false;

  // 1. Exact normalized match
  if (normTarget === normCand || normTarget === normOrig) return true;

  // 2. Substring match only if length ratio >= 0.6
  if (
    normCand &&
    (normCand.includes(normTarget) || normTarget.includes(normCand))
  ) {
    const lenRatio =
      Math.min(normTarget.length, normCand.length) /
      Math.max(normTarget.length, normCand.length);
    if (lenRatio >= 0.6) return true;
  }
  if (
    normOrig &&
    (normOrig.includes(normTarget) || normTarget.includes(normOrig))
  ) {
    const lenRatio =
      Math.min(normTarget.length, normOrig.length) /
      Math.max(normTarget.length, normOrig.length);
    if (lenRatio >= 0.6) return true;
  }

  return false;
}

// Auto Category Generator (Parity with sync-movies edge function)
function getCategory(genreNames, lang, originCountry = []) {
  if (originCountry.includes("IN") || lang === "hi") return "Bollywood";
  if (genreNames.includes("Action")) return "Action";
  if (genreNames.includes("Animation")) return "Animation";
  if (genreNames.includes("Horror")) return "Horror";
  if (genreNames.includes("Science Fiction") || genreNames.includes("Sci-Fi"))
    return "Sci-Fi";
  return "Hollywood";
}

// Clean Title Parser from Netlify sitemap/slugs
function cleanTitleFromSlug(slugOrText) {
  let ts = slugOrText.replace(/\/$/, "").split("/").pop().replace(".html", "");
  const ym = ts.match(/-((?:19|20)\d{2})-/);
  const year = ym ? ym[1] : "";
  if (year) {
    const i = ts.indexOf(`-${year}-`);
    if (i > 0) ts = ts.slice(0, i);
  } else {
    for (const kw of [
      "-hindi",
      "-dual",
      "-english",
      "-tamil",
      "-telugu",
      "-bluray",
      "-brrip",
      "-webrip",
      "-web-dl",
      "-hdrip",
      "-dvdrip",
      "-season",
      "-s0",
      "-ep",
      "-complete",
      "-mkv",
      "-480p",
      "-720p",
      "-1080p",
      "-4k",
    ]) {
      const i = ts.toLowerCase().indexOf(kw);
      if (i > 2) {
        ts = ts.slice(0, i);
        break;
      }
    }
  }
  return ts
    .replace(/-/g, " ")
    .replace(/\b\w/g, (c) => c.toUpperCase())
    .trim();
}

// -------------------------------------------------------------
// CHECKPOINT CACHE SYSTEM (Remembers Top-Most Netlify Item)
// -------------------------------------------------------------
async function getLastSyncCheckpoint() {
  try {
    const { data: queueData } = await supabase
      .from("bot_queue")
      .select("title, download_url")
      .eq("type", "netlify_checkpoint")
      .order("id", { ascending: false })
      .limit(1)
      .maybeSingle();

    if (queueData && queueData.title) {
      return {
        title: queueData.title,
        year: queueData.download_url ? parseInt(queueData.download_url) : null,
      };
    }

    const { data: lastMovie } = await supabase
      .from("movies")
      .select("title, release_year")
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    if (lastMovie) {
      return { title: lastMovie.title, year: lastMovie.release_year };
    }
  } catch (e) {
    console.warn("Could not fetch last sync checkpoint:", e.message);
  }
  return null;
}

async function saveSyncCheckpoint(title, year) {
  try {
    await supabase.from("bot_queue").insert([
      {
        title: title,
        type: "netlify_checkpoint",
        status: "processed",
        download_url: year ? String(year) : null,
      },
    ]);
    console.log(
      `📌 [CHECKPOINT SAVED] Top anchor set to: "${title}" (${year || "N/A"})`,
    );
  } catch (e) {
    console.warn("Could not save sync checkpoint:", e.message);
  }
}

// Check if a movie with (Normalized Title + Release Year) already exists in Supabase movies DB
async function checkExistingMovieInDB(title, targetYear) {
  const normTargetTitle = normalizeTitle(title);
  const yr = targetYear ? parseInt(targetYear) : null;

  if (yr) {
    const { data: moviesInYear } = await supabase
      .from("movies")
      .select("id, title, release_year, tmdb_id")
      .eq("release_year", yr);

    if (moviesInYear && moviesInYear.length > 0) {
      const match = moviesInYear.find(
        (m) => normalizeTitle(m.title) === normTargetTitle,
      );
      if (match) return match;
    }
  }

  const { data: moviesByTitle } = await supabase
    .from("movies")
    .select("id, title, release_year, tmdb_id")
    .ilike("title", `%${title.trim()}%`);

  if (moviesByTitle && moviesByTitle.length > 0) {
    const match = moviesByTitle.find((m) => {
      const isTitleSame = normalizeTitle(m.title) === normTargetTitle;
      const isYearSame = yr ? m.release_year === yr : true;
      return isTitleSame && isYearSame;
    });
    if (match) return match;
  }

  return null;
}

// Check if a series with (Normalized Title + Release Year) already exists in Supabase web_series DB
async function checkExistingSeriesInDB(title, targetYear) {
  const normTargetTitle = normalizeTitle(title);
  const yr = targetYear ? parseInt(targetYear) : null;

  if (yr) {
    const { data: seriesInYear } = await supabase
      .from("web_series")
      .select("id, title, release_year, tmdb_id")
      .eq("release_year", yr);

    if (seriesInYear && seriesInYear.length > 0) {
      const match = seriesInYear.find(
        (m) => normalizeTitle(m.title) === normTargetTitle,
      );
      if (match) return match;
    }
  }

  const { data: seriesByTitle } = await supabase
    .from("web_series")
    .select("id, title, release_year, tmdb_id")
    .ilike("title", `%${title.trim()}%`);

  if (seriesByTitle && seriesByTitle.length > 0) {
    const match = seriesByTitle.find((m) => {
      const isTitleSame = normalizeTitle(m.title) === normTargetTitle;
      const isYearSame = yr ? m.release_year === yr : true;
      return isTitleSame && isYearSame;
    });
    if (match) return match;
  }

  return null;
}

// Import Movie from TMDB to Supabase movies table
async function importMovie(queryTitle, targetYear = null) {
  try {
    if (!TMDB_API_KEY || !queryTitle || !queryTitle.trim()) return null;

    const cleanQ = queryTitle
      .trim()
      .replace(/^requesting movie:\s*/i, "")
      .replace(/^movie request:\s*/i, "");
    if (!cleanQ) return null;

    const yr = targetYear ? parseInt(targetYear) : null;

    // STEP 1: Mandatory Pre-DB Check (movies table)
    const existingInDB = await checkExistingMovieInDB(cleanQ, yr);
    if (existingInDB) {
      console.log(
        `ℹ️ [Already Uploaded] "${existingInDB.title}" (${existingInDB.release_year || "N/A"}) exists in movies DB.`,
      );
      return {
        status: "exists",
        id: existingInDB.id,
        title: existingInDB.title,
      };
    }

    // STEP 2: Search TMDB Movie API
    const safeQ = encodeURIComponent(cleanQ);
    let searchUrl = `https://api.themoviedb.org/3/search/movie?api_key=${TMDB_API_KEY}&query=${safeQ}&include_adult=false&language=en-US`;
    if (yr) {
      searchUrl += `&primary_release_year=${yr}`;
    }

    let searchRes = await fetch(searchUrl);
    let searchData = searchRes.ok ? await searchRes.json() : null;
    let results = searchData?.results || [];

    if (results.length === 0 && yr) {
      const fallbackUrl = `https://api.themoviedb.org/3/search/movie?api_key=${TMDB_API_KEY}&query=${safeQ}&include_adult=false&language=en-US`;
      const fallbackRes = await fetch(fallbackUrl);
      const fallbackData = fallbackRes.ok ? await fallbackRes.json() : null;
      results = fallbackData?.results || [];
    }

    if (results.length === 0) {
      console.log(
        `⚠️ No TMDB movie result found for "${cleanQ}" (${yr || "N/A"})`,
      );
      return null;
    }

    // STEP 3: Match Result
    let tmdbMovie = results.find((r) => {
      const rYear = r.release_date
        ? parseInt(r.release_date.slice(0, 4))
        : null;
      const titleMatch = isTitleMatch(cleanQ, r.title, r.original_title);
      return titleMatch && (yr ? rYear === yr : true);
    });

    if (!tmdbMovie && yr) {
      tmdbMovie = results.find((r) => {
        const rYear = r.release_date
          ? parseInt(r.release_date.slice(0, 4))
          : null;
        const titleMatch = isTitleMatch(cleanQ, r.title, r.original_title);
        return titleMatch && rYear && Math.abs(rYear - yr) <= 1;
      });
    }

    if (!tmdbMovie && !yr) {
      tmdbMovie = results.find((r) =>
        isTitleMatch(cleanQ, r.title, r.original_title),
      );
    }

    if (!tmdbMovie) {
      console.log(
        `⚠️ Rejected TMDB movie search results for "${cleanQ}" (${yr || "N/A"}) - Title mismatch with "${results[0]?.title}"`,
      );
      return null;
    }

    // STEP 4: Check by TMDB ID
    const { data: dbByTmdbId } = await supabase
      .from("movies")
      .select("id, title, release_year")
      .eq("tmdb_id", tmdbMovie.id)
      .maybeSingle();

    if (dbByTmdbId) {
      console.log(
        `ℹ️ [Already Uploaded] "${dbByTmdbId.title}" (TMDB ID: ${tmdbMovie.id}) exists in movies DB.`,
      );
      return { status: "exists", id: dbByTmdbId.id, title: dbByTmdbId.title };
    }

    // STEP 5: Fetch Details
    const detailRes = await fetch(
      `https://api.themoviedb.org/3/movie/${tmdbMovie.id}?api_key=${TMDB_API_KEY}&append_to_response=credits,videos&language=en-US`,
    );
    const d = await detailRes.json();

    const cast = d.credits?.cast?.slice(0, 8).map((c) => c.name) || [];
    const director =
      d.credits?.crew?.find((c) => c.job === "Director")?.name || null;
    const trailer = d.videos?.results?.find(
      (v) => v.site === "YouTube" && v.type?.includes("Trailer"),
    )?.key;
    const releaseYear = d.release_date
      ? parseInt(d.release_date.slice(0, 4))
      : yr || null;

    const baseSlug = slugify(d.title);
    let slug = releaseYear
      ? `${baseSlug}-${releaseYear}`
      : `${baseSlug}-${d.id}`;

    const { data: existingSlug } = await supabase
      .from("movies")
      .select("id")
      .eq("slug", slug)
      .maybeSingle();

    if (existingSlug) {
      slug = `${slug}-${d.id}`;
    }

    const genreNames = d.genres?.map((g) => g.name) || [];
    const category = getCategory(
      genreNames,
      d.original_language || "en",
      d.origin_country || [],
    );

    const newMovie = {
      title: d.title,
      slug,
      description: d.overview || "",
      poster_url: d.poster_path
        ? `https://image.tmdb.org/t/p/w500${d.poster_path}`
        : null,
      backdrop_url: d.backdrop_path
        ? `https://image.tmdb.org/t/p/original${d.backdrop_path}`
        : null,
      tmdb_id: d.id,
      duration: d.runtime || null,
      release_year: releaseYear,
      director,
      genres: genreNames,
      actors: cast,
      trailer_url: trailer
        ? `https://www.youtube.com/watch?v=${trailer}`
        : null,
      status: "active",
      language: d.original_language || "en",
    };

    const { data: inserted, error } = await supabase
      .from("movies")
      .insert([newMovie])
      .select("id, title")
      .single();

    if (error) {
      console.error(
        `❌ DB Insert Error for Movie "${d.title}":`,
        error.message,
      );
      return null;
    }

    console.log(
      `✅ [NEW MOVIE UPLOADED] "${inserted.title}" (${releaseYear}) added to Supabase movies DB!`,
    );
    return {
      status: "inserted",
      id: inserted.id,
      title: inserted.title,
      year: releaseYear,
    };
  } catch (err) {
    console.error("importMovie Exception:", err.message);
    return null;
  }
}

// Import Web Series from TMDB TV API to Supabase web_series table
async function importWebSeries(queryTitle, targetYear = null) {
  try {
    if (!TMDB_API_KEY || !queryTitle || !queryTitle.trim()) return null;

    let cleanQ = queryTitle
      .trim()
      .replace(/\s*(season\s*\d+|s\d+|bluray|webrip|hdrip|4k).*/i, "")
      .replace(/^requesting series:\s*/i, "")
      .trim();
    if (!cleanQ) cleanQ = queryTitle.trim();

    const yr = targetYear ? parseInt(targetYear) : null;

    // STEP 1: Pre-DB Check in web_series table
    const existingInDB = await checkExistingSeriesInDB(cleanQ, yr);
    if (existingInDB) {
      console.log(
        `ℹ️ [Series Exists] "${existingInDB.title}" (${existingInDB.release_year || "N/A"}) exists in web_series DB.`,
      );
      return {
        status: "exists",
        id: existingInDB.id,
        title: existingInDB.title,
      };
    }

    // STEP 2: Search TMDB TV Search API
    const safeQ = encodeURIComponent(cleanQ);
    let searchUrl = `https://api.themoviedb.org/3/search/tv?api_key=${TMDB_API_KEY}&query=${safeQ}&include_adult=false&language=en-US`;
    if (yr) {
      searchUrl += `&first_air_date_year=${yr}`;
    }

    let searchRes = await fetch(searchUrl);
    let searchData = searchRes.ok ? await searchRes.json() : null;
    let results = searchData?.results || [];

    if (results.length === 0 && yr) {
      const fallbackUrl = `https://api.themoviedb.org/3/search/tv?api_key=${TMDB_API_KEY}&query=${safeQ}&include_adult=false&language=en-US`;
      const fallbackRes = await fetch(fallbackUrl);
      const fallbackData = fallbackRes.ok ? await fallbackRes.json() : null;
      results = fallbackData?.results || [];
    }

    if (results.length === 0) {
      console.log(
        `⚠️ No TMDB TV series result found for "${cleanQ}" (${yr || "N/A"})`,
      );
      return null;
    }

    // STEP 3: Match TV Result
    let tmdbSeries = results.find((r) =>
      isTitleMatch(cleanQ, r.name, r.original_name),
    );
    if (!tmdbSeries) {
      const topResult = results[0];
      if (isTitleMatch(cleanQ, topResult.name, topResult.original_name)) {
        tmdbSeries = topResult;
      }
    }

    if (!tmdbSeries) {
      console.log(
        `⚠️ Rejected TMDB TV result "${results[0]?.name}" - Title mismatch with "${cleanQ}"`,
      );
      return null;
    }

    // STEP 4: Secondary Check by TMDB ID
    const { data: dbByTmdbId } = await supabase
      .from("web_series")
      .select("id, title, release_year")
      .eq("tmdb_id", tmdbSeries.id)
      .maybeSingle();

    if (dbByTmdbId) {
      console.log(
        `ℹ️ [Series Exists] "${dbByTmdbId.title}" (TMDB ID: ${tmdbSeries.id}) exists in web_series DB.`,
      );
      return { status: "exists", id: dbByTmdbId.id, title: dbByTmdbId.title };
    }

    // STEP 5: Fetch Full Details from TMDB TV API
    const detailRes = await fetch(
      `https://api.themoviedb.org/3/tv/${tmdbSeries.id}?api_key=${TMDB_API_KEY}&append_to_response=aggregate_credits,videos&language=en-US`,
    );
    const d = await detailRes.json();

    const cast =
      d.aggregate_credits?.cast?.slice(0, 8).map((c) => c.name) || [];
    const director = d.created_by?.map((c) => c.name).join(", ") || null;
    const trailer = d.videos?.results?.find(
      (v) => v.site === "YouTube" && v.type?.includes("Trailer"),
    )?.key;
    const releaseYear = d.first_air_date
      ? parseInt(d.first_air_date.slice(0, 4))
      : yr || null;

    const baseSlug = slugify(d.name);
    let slug = releaseYear
      ? `${baseSlug}-${releaseYear}`
      : `${baseSlug}-${d.id}`;

    const { data: existingSlug } = await supabase
      .from("web_series")
      .select("id")
      .eq("slug", slug)
      .maybeSingle();

    if (existingSlug) {
      slug = `${slug}-${d.id}`;
    }

    const genreNames = d.genres?.map((g) => g.name) || [];
    const category = getCategory(
      genreNames,
      d.original_language || "en",
      d.origin_country || [],
    );

    const newSeries = {
      title: d.name,
      slug,
      description: d.overview || "",
      poster_url: d.poster_path
        ? `https://image.tmdb.org/t/p/w500${d.poster_path}`
        : null,
      backdrop_url: d.backdrop_path
        ? `https://image.tmdb.org/t/p/original${d.backdrop_path}`
        : null,
      tmdb_id: d.id,
      release_year: releaseYear,
      director,
      genres: genreNames,
      actors: cast,
      trailer_url: trailer
        ? `https://www.youtube.com/watch?v=${trailer}`
        : null,
      status: "active",
      language: d.original_language || "en",
    };

    const { data: inserted, error } = await supabase
      .from("web_series")
      .insert([newSeries])
      .select("id, title")
      .single();

    if (error) {
      console.error(
        `❌ DB Insert Error for Series "${d.name}":`,
        error.message,
      );
      return null;
    }

    console.log(
      `✅ [NEW SERIES UPLOADED] "${inserted.title}" (${releaseYear}) added to Supabase web_series DB!`,
    );
    return {
      status: "inserted",
      id: inserted.id,
      title: inserted.title,
      year: releaseYear,
    };
  } catch (err) {
    console.error("importWebSeries Exception:", err.message);
    return null;
  }
}

// -------------------------------------------------------------
// TASK 1: Process User Content Requests (Both tables)
// -------------------------------------------------------------
async function processPendingContentRequests() {
  console.log("\n📋 --- Task 1: Checking Pending User Content Requests ---");

  const { data: contactReqs, error: contactErr } = await supabase
    .from("contact_submissions")
    .select("*")
    .eq("status", "pending")
    .limit(20);

  if (contactErr) {
    console.error("Error fetching contact_submissions:", contactErr.message);
  } else if (contactReqs && contactReqs.length > 0) {
    console.log(
      `Found ${contactReqs.length} pending submission(s) in contact_submissions.`,
    );

    for (const req of contactReqs) {
      const rawTitle =
        req.content_name ||
        req.subject?.replace(/^Movie Request:\s*/i, "") ||
        req.message;
      if (!rawTitle) continue;

      const yrMatch = rawTitle.match(/\b(19\d{2}|20\d{2})\b/);
      const year = yrMatch ? yrMatch[1] : null;
      const title = yrMatch
        ? rawTitle.replace(yrMatch[0], "").replace(/[()]/g, "").trim()
        : rawTitle;

      const isSeries =
        req.content_type === "series" ||
        /season|series|show/i.test(req.subject || "") ||
        /season|series|show/i.test(req.message || "");

      console.log(
        `🔍 Fulfilling user request for: "${title}" (${year || "No Year"}) (Submission ID: ${req.id})...`,
      );
      let result = null;
      if (isSeries) {
        result = await importWebSeries(title, year);
      } else {
        result = await importMovie(title, year);
      }

      if (
        result &&
        (result.status === "inserted" || result.status === "exists")
      ) {
        await supabase
          .from("contact_submissions")
          .update({
            status: "resolved",
            resolved_at: new Date().toISOString(),
            admin_notes: `Auto-fulfilled by GitHub Actions (ID: ${result.id})`,
          })
          .eq("id", req.id);

        console.log(`✅ Marked contact_submission ID ${req.id} as resolved!`);

        if (TELEGRAM_ADMIN_CHAT_ID) {
          await sendTelegramMessage(
            TELEGRAM_ADMIN_CHAT_ID,
            `✅ <b>[User Request Fulfilled]</b>\nTitle: <b>${result.title}</b>\nRequested by: ${req.name || req.email || "User"}`,
          );
        }
      }
    }
  }

  const { data: contentReqs, error: contentErr } = await supabase
    .from("content_requests")
    .select("*")
    .eq("status", "pending")
    .limit(20);

  if (contentErr) {
    console.error("Error fetching content_requests:", contentErr.message);
  } else if (contentReqs && contentReqs.length > 0) {
    console.log(
      `Found ${contentReqs.length} pending request(s) in content_requests.`,
    );

    for (const req of contentReqs) {
      const rawTitle = req.title || req.requested_title;
      if (!rawTitle) continue;

      const yrMatch = rawTitle.match(/\b(19\d{2}|20\d{2})\b/);
      const year = yrMatch ? yrMatch[1] : null;
      const title = yrMatch
        ? rawTitle.replace(yrMatch[0], "").replace(/[()]/g, "").trim()
        : rawTitle;
      const isSeries =
        req.linked_content_type === "series" || /season|series/i.test(rawTitle);

      console.log(
        `🔍 Fulfilling content_request for: "${title}" (${year || "No Year"})...`,
      );
      let result = null;
      if (isSeries) {
        result = await importWebSeries(title, year);
      } else {
        result = await importMovie(title, year);
      }

      if (
        result &&
        (result.status === "inserted" || result.status === "exists")
      ) {
        await supabase
          .from("content_requests")
          .update({
            status: "completed",
            linked_content_id: result.id,
            linked_content_type: isSeries ? "series" : "movie",
            updated_at: new Date().toISOString(),
          })
          .eq("id", req.id);

        if (req.user_chat_id) {
          await sendTelegramMessage(
            req.user_chat_id,
            `🎉 <b>Good news!</b> Your requested item <b>"${result.title}"</b> has been added to our library!`,
          );
        }

        if (TELEGRAM_ADMIN_CHAT_ID) {
          await sendTelegramMessage(
            TELEGRAM_ADMIN_CHAT_ID,
            `✅ <b>[Content Request Fulfilled]</b>\nTitle: <b>${result.title}</b>`,
          );
        }
      }
    }
  }

  if (
    (!contactReqs || contactReqs.length === 0) &&
    (!contentReqs || contentReqs.length === 0)
  ) {
    console.log("No pending user requests found in either table.");
  }
}

// -------------------------------------------------------------
// TASK 2: Auto-Scrape Netlify Site (With Smart Checkpoint Cache)
// -------------------------------------------------------------
async function scrapeNetlifySite() {
  console.log(
    "\n🌐 --- Task 2: Auto-Scraping Netlify Site (Recently Added) ---",
  );
  const siteUrl = "https://devdownloaderdetabase.netlify.app/";
  try {
    const res = await fetch(siteUrl, {
      headers: {
        "User-Agent":
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
      },
    });

    if (!res.ok) {
      console.warn(`Could not fetch ${siteUrl}, status: ${res.status}`);
      return;
    }

    const html = await res.text();
    const candidateItems = [];

    // Parse const DB=[...] array embedded in Netlify index.html
    const dbMatch = html.match(
      /(?:const|var|window\.)?\s*DB\s*=\s*(\[\s*\{[\s\S]*?\}\s*\]);/,
    );
    if (dbMatch) {
      try {
        const dbEntries = JSON.parse(dbMatch[1]);
        console.log(`Parsed ${dbEntries.length} items from Netlify DB array.`);
        for (const entry of dbEntries.slice(0, 50)) {
          if (entry.t) {
            const cleanTitle = cleanTitleFromSlug(entry.t);
            const year = entry.y ? parseInt(entry.y) : null;
            const isSeries =
              entry.tp === "Series" ||
              /season|s\d{2}|web.series|episode|ep\d/i.test(entry.t);
            if (cleanTitle && cleanTitle.length > 2) {
              candidateItems.push({
                title: cleanTitle,
                year,
                type: isSeries ? "series" : "movie",
                rawTitle: entry.t,
              });
            }
          }
        }
      } catch (e) {
        console.error("JSON parse error for Netlify DB array:", e.message);
      }
    }

    if (candidateItems.length === 0) {
      console.log("No candidate items found on Netlify site.");
      return;
    }

    // 1. Fetch Last Sync Checkpoint Anchor
    const checkpoint = await getLastSyncCheckpoint();

    // 2. Check if the top-most item on Netlify matches the last sync checkpoint!
    if (checkpoint && candidateItems.length > 0) {
      const topItem = candidateItems[0];
      const isTopMatch =
        normalizeTitle(topItem.title) === normalizeTitle(checkpoint.title) &&
        (checkpoint.year ? topItem.year === checkpoint.year : true);

      if (isTopMatch) {
        console.log(
          `⚡ [CACHE HIT] Netlify top item matches last checkpoint: "${topItem.title}" (${topItem.year || "N/A"}).`,
        );
        console.log(
          "✨ No new items have been added to Netlify since the last run. Skipping redundant checks!",
        );
        return;
      }
    }

    // 3. Find index of last checkpoint in Netlify items list
    let stopIndex = candidateItems.length;
    if (checkpoint) {
      const foundIdx = candidateItems.findIndex(
        (item) =>
          normalizeTitle(item.title) === normalizeTitle(checkpoint.title) &&
          (checkpoint.year ? item.year === checkpoint.year : true),
      );
      if (foundIdx > 0) {
        stopIndex = foundIdx;
        console.log(
          `📌 Found last checkpoint "${checkpoint.title}" at position #${foundIdx + 1}. Processing only ${foundIdx} new item(s) above it!`,
        );
      }
    }

    const itemsToProcess = candidateItems.slice(0, stopIndex);
    console.log(
      `Extracted ${itemsToProcess.length} candidate item(s) to process.`,
    );

    let addedCount = 0;
    for (const item of itemsToProcess) {
      let result = null;
      if (item.type === "series") {
        result = await importWebSeries(item.title, item.year);
      } else {
        result = await importMovie(item.title, item.year);
      }

      if (result && result.status === "inserted") {
        addedCount++;
        if (TELEGRAM_ADMIN_CHAT_ID) {
          await sendTelegramMessage(
            TELEGRAM_ADMIN_CHAT_ID,
            `🚀 <b>[Auto-Scraped & Uploaded]</b> New ${item.type} added from Netlify: <b>${result.title}</b> (${result.year || ""})`,
          );
        }
      }
    }

    // 4. Always save the #1 top Netlify item as the new anchor checkpoint!
    if (candidateItems.length > 0) {
      await saveSyncCheckpoint(candidateItems[0].title, candidateItems[0].year);
    }

    console.log(
      `Finished Netlify Auto-Sync. Total New Items Added: ${addedCount}`,
    );
  } catch (err) {
    console.error("Error scraping Netlify site:", err.message);
  }
}

// Main Execution
async function main() {
  console.log("🚀 Starting Dev Downloader Auto-Sync Engine...");
  await processPendingContentRequests();
  await scrapeNetlifySite();
  console.log("\n🏁 Auto-Sync Engine Completed Successfully!");
}

main().catch((err) => {
  console.error("Fatal Auto-Sync Error:", err);
  process.exit(1);
});
