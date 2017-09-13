# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0: Add routes

get '/contact' do
  "We are located at:<br>1705 Guadalupe St. <br> Austin, TX 78701"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# http://localhost:9393/great_job?name=Diem
# http://localhost:9393/great_job

get '/add/:first_number/and/:second_number' do
  first_number = params[:first_number]
  second_number = params[:second_number]
  result = first_number.to_i + second_number.to_i
  # result = params[:first_number].to_i + params[:second_number].to_i
  result.to_s
end

# http://localhost:9393/add/1/and/2

get '/name/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])
  student.to_s
end

get '/campus/:campus' do
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end

get '/age/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
  student.to_s
end