import os
from pathlib import Path
import sqlite3
import shlex


class INITDB:
    def __init__(self):
        self.initdb_dir = Path('/docker-entrypoint-initdb.d')
        self.db_path = Path(os.environ["DB_PATH"]).resolve()

        self.create_db()

    def create_db(self):
        connection = sqlite3.connect(self.db_path)
        connection.close()

    def start(self):
        self.process_sql()
        self.process_csv()

    def process_sql(self):
        with sqlite3.connect(self.db_path) as conn:
            for path in self.initdb_dir.rglob("*.sql"):
                with open(path, "r") as fh:
                    statements = fh.read()
                    cursor = conn.cursor()
                    cursor.executescript(statements)
                    conn.commit()
                    cursor.close()

    def process_csv(self):
        csv_data = os.getenv("CSV_DATA")

        if csv_data is None:
            return

        if "|" not in csv_data and ";" not in csv_data:
            raise ValueError("Invalid CSV data")

        items = [item.split('|') for item in csv_data.split(';')]

        for table_name, path in items:
            # cmd = f"(echo .mode csv ; echo .header on ; echo .import {path} {table_name} ) | sqlite3 {self.db_path}"
            cmd = f"(echo .import --csv --skip 1 {path} {table_name} ) | sqlite3 {self.db_path}"
            print(cmd)
            os.system(cmd)

def main():
    handler = INITDB()
    handler.start()


if __name__ == "__main__":
    main()

