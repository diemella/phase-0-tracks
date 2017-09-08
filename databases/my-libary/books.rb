require 'sqlite3'

db = SQLite3::Database.new("books.db")

create_authors_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS authors (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

create_titles_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS titles (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
  )
SQL

db.execute(create_titles_table_cmd)
db.execute(create_authors_table_cmd)