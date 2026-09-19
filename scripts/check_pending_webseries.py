import os
import csv
import sys

def get_pending_webseries_count(
    seasons_csv: str = "seasons_rows.csv",
    episodes_csv: str = "episodes_rows.csv"
) -> int:
    """Reads seasons_rows.csv and episodes_rows.csv and returns count of pending items needing download links."""
    pending_count = 0

    if os.path.exists(seasons_csv):
        try:
            with open(seasons_csv, mode="r", encoding="utf-8-sig") as f:
                reader = csv.DictReader(f)
                for raw_row in reader:
                    row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in raw_row.items() if k}
                    url_720 = row.get("download_url_720p", "")
                    url_1080 = row.get("download_url_1080p", "")
                    is_not_found = url_720.lower() in ["not_found", "coming_soon"] or url_1080.lower() in ["not_found", "coming_soon"]
                    if not is_not_found and not url_720 and not url_1080:
                        pending_count += 1
        except Exception as e:
            print(f"⚠️ Error reading '{seasons_csv}': {e}", file=sys.stderr)

    if os.path.exists(episodes_csv):
        try:
            with open(episodes_csv, mode="r", encoding="utf-8-sig") as f:
                reader = csv.DictReader(f)
                for raw_row in reader:
                    row = {str(k or "").strip().lower(): str(v or "").strip() for k, v in raw_row.items() if k}
                    url_720 = row.get("download_url_720p", "")
                    url_1080 = row.get("download_url_1080p", "")
                    is_not_found = url_720.lower() in ["not_found", "coming_soon"] or url_1080.lower() in ["not_found", "coming_soon"]
                    if not is_not_found and not url_720 and not url_1080:
                        pending_count += 1
        except Exception as e:
            print(f"⚠️ Error reading '{episodes_csv}': {e}", file=sys.stderr)

    return pending_count

if __name__ == "__main__":
    s_csv = sys.argv[1] if len(sys.argv) > 1 else "seasons_rows.csv"
    e_csv = sys.argv[2] if len(sys.argv) > 2 else "episodes_rows.csv"
    print(get_pending_webseries_count(s_csv, e_csv))
