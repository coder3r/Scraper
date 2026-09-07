import os
import csv
import sys

def get_pending_count(movies_csv: str = "movies_rows.csv") -> int:
    """Reads movies_rows.csv and returns count of inactive movies needing processing."""
    if not os.path.exists(movies_csv):
        return 0

    try:
        with open(movies_csv, mode="r", encoding="utf-8-sig") as f:
            reader = csv.DictReader(f)
            pending_count = 0
            for raw_row in reader:
                row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in raw_row.items() if k}
                m_id = row.get("id", "")
                title = row.get("title", "")
                status = row.get("status", "").lower()
                download_url = row.get("download_url", "")
                file_size = row.get("file_size", "")

                is_not_found = download_url.lower() in ["not_found", "coming_soon"] or status == "coming_soon"
                is_inactive_or_missing = status in ["inactive", "disabled", "none", "null"] or not download_url or download_url.lower() in ["null", "none", "n/a", ""]
                needs_download = (
                    not download_url
                    or download_url.lower() in ["null", "none", "n/a", ""]
                ) or (
                    not file_size
                    or file_size.lower() in ["null", "none", "n/a", ""]
                )

                if m_id and title and not is_not_found and is_inactive_or_missing and needs_download:
                    pending_count += 1

            return pending_count
    except Exception as e:
        print(f"⚠️ Error reading '{movies_csv}': {e}", file=sys.stderr)
        return 0

if __name__ == "__main__":
    csv_path = sys.argv[1] if len(sys.argv) > 1 else "movies_rows.csv"
    print(get_pending_count(csv_path))
