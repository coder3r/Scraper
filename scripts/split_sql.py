import os
import sys

def split_sql_file(sql_path: str = "output_updates.sql", num_parts: int = 3):
    """Splits a large SQL update file into smaller part files for web SQL editor compatibility."""
    if not os.path.exists(sql_path):
        print(f"Warning: SQL file '{sql_path}' not found.")
        return

    try:
        with open(sql_path, "r", encoding="utf-8") as f:
            content = f.read()

        statements = [s.strip() for s in content.split("\n\n") if s.strip()]
        if not statements:
            print("SQL file is empty.")
            return

        header = statements[0] if statements[0].startswith("-- DEV DOWNLOADER") else ""
        body = statements[1:] if header else statements

        total = len(body)
        part_size = (total + num_parts - 1) // num_parts

        base_stem = os.path.splitext(os.path.basename(sql_path))[0]
        prefix = "webseries_part" if "webseries" in base_stem.lower() else "output_part"

        for idx in range(num_parts):
            part_stmts = body[idx * part_size : (idx + 1) * part_size]
            if not part_stmts:
                continue
            filename = f"{prefix}{idx + 1}.sql"
            with open(filename, "w", encoding="utf-8") as f_out:
                f_out.write(f"-- DEV DOWNLOADER SQL UPDATE - PART {idx + 1} OF {num_parts}\n\n")
                f_out.write("\n\n".join(part_stmts))
            print(f"Created '{filename}' ({len(part_stmts)} statements).")
    except Exception as e:
        print(f"Error splitting SQL file '{sql_path}': {e}")

if __name__ == "__main__":
    target_path = sys.argv[1] if len(sys.argv) > 1 else "output_updates.sql"
    parts = int(sys.argv[2]) if len(sys.argv) > 2 else 3
    split_sql_file(target_path, parts)
