import duckdb, glob, os

conn = duckdb.connect("data/olist.duckdb")

conn.execute("CREATE SCHEMA IF NOT EXISTS raw;")

for path in glob.glob("data/raw/*.csv"):
    table_name = os.path.splitext(os.path.basename(path))[0]
    conn.execute(f"CREATE OR REPLACE TABLE raw.{table_name} AS "
                 f"SELECT * FROM read_csv_auto('{path}');")


print(conn.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='raw'").fetchall())
conn.close()