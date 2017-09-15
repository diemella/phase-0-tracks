# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/aus' do
  campus = "AUS"
  @students = db.execute("SELECT * FROM students WHERE campus =?", [campus])
  erb :aus
end

get '/chi' do
  campus = "CHI"
  @students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  erb :chi
end

get '/nyc' do
  campus = "NYC"
  @students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  erb :nyc
end

get '/sd' do
  campus = "SD"
  @students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  erb :sd
end

get '/sf' do
  campus = "SF"
  @students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  erb :sf
end

get '/sea' do
  campus = "SEA"
  @students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  erb :sea
end