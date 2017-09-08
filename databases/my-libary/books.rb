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

def add_book(db, title, author_name)
  titles = db.execute("SELECT title FROM titles")
  if titles.flatten.include? title
    puts "#{title} is already on the list!"
  else
    authors_ids = db.execute("SELECT * FROM authors")

    ids = {}

    authors_ids.each do |id, first, last|
      ids[id] = first + " " + last
    end

    if ids.has_value? author_name
      author_id = ids.key(author_name)
        db.execute("INSERT INTO titles (title, author_id) VALUES (?, ?)", [title, author_id])
    else
      first_name = author_name.split[0]
      last_name = author_name.split[1]
      add_author(db, first_name, last_name)
      add_book(db, title, author_name)
    end
  end
end

def remove_book(db, title)
  titles = db.execute("SELECT title FROM titles")
  if !titles.flatten.include? title
    puts "Cannot remove -- #{title} is not on the list."
  else
    db.execute("DELETE FROM titles WHERE title=?", [title])
  end
end

def display_books(db)
  select_print = db.execute("SELECT title, first_name, last_name   FROM titles, authors WHERE author_id = authors.id")

  select_print.each do |title, first, last|
    puts " '#{title}' by #{first} #{last}"
  end
end

# TEST CODE

# add_author(db, "Jane", "Austen")
# add_author(db, "Steven", "King")

# add_book(db, "Pride and Prejudice", "Jane Austen")
# add_book(db, "Kite Runner", "Khaled Hosseini")

# remove_book(db, "The Shining")
# remove_book(db, "Kite Runner")

#display_books(db)

# USER INTERFACE

puts "Welcome to your library!"

valid_input = false
until valid_input

  puts "What would you like to do?"
  puts "-- Type 'add author' to add author."
  puts "-- Type 'add book' to add book."
  puts "-- Type 'remove' to remove book."
  puts "-- Type 'display' to display books."
  puts "-- Type 'quit' to quit program."

  choice = gets.chomp

  case choice
    when 'add author'
      puts "What is the author's first name?"
      first_name = gets.chomp
      puts "What is the author's last name?"
      last_name = gets.chomp
      add_author(db, first_name, last_name)
    when 'add book'
      puts "What is the title of the book you want to add?"
      title = gets.chomp
      puts "What is the first and last name of the author of this book?"
      author_name = gets.chomp
      add_book(db, title, author_name)
    when 'remove'
      puts "What is the title of the book you want to remove?"
      title = gets.chomp
      remove_book(db, title)
    when 'display'
      puts "Here is a list of books in your library:"
      display_books(db)
    when 'quit'
      puts "See you next time! Remember -- keep learning."
      valid_input = true
    else
      puts "Sorry -- I didn't understand you."
  end

end