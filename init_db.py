import sqlite3

db_name = "user.db"

conn = sqlite3.connect(db_name)
c = conn.cursor()

c.execute("""
CREATE TABLE IF NOT EXISTS USER_PLAIN (
    USERNAME TEXT PRIMARY KEY,
    PASSWORD TEXT NOT NULL
);
""")

conn.commit()
conn.close()
print("DB ready")
