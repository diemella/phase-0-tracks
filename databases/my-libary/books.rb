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

# METHODS

def add_author(db, first_name, last_name)
  authors = db.execute("SELECT first_name, last_name FROM authors")
  full_names = []
  authors.each do |first, last|
    full_names << first + " " + last
  end
  if !full_names.include?(first_name + " " + last_name)
    db.execute("INSERT INTO authors (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
  else
    puts "#{first_name} #{last_name} is already on list."
  end
end

# TEST CODE

# add_author(db, "Jane", "Austen")
# add_author(db, "Steven", "King")