# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  name = params[:name]
  campus = params[:campus]
  if name
    @students = db.execute("SELECT * FROM students WHERE name = ?", [name])
  elsif campus
    @students = db.execute("SELECT * FROM students WHERE campus = ?", [campus])
  else 
    @students = db.execute("SELECT * FROM students")
  end
  erb :home
end

get '/students/new' do
  erb :new_student
end

post '/students' do
  db.execute("INSERT INTO students (name, age, campus)
   VALUES (?, ?, ?)", [params['name'], params['age'].to_i, params['campus']])
  redirect '/'
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

get '/contact' do
  "1705 Guadalupe Street | 1st Floor | Austin, TX 78701"
end

get '/great_job' do
  name = params[:name]
  name ? "Good job, #{name}!" : "Good job!"
end

get '/:val1/plus/:val2' do
  sum = params[:val1].to_i + params[:val2].to_i
  "#{sum}"
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
  @student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  @response = ""
  @response << "ID: #{student['id']}<br>"
  @response << "Name: #{student['name']}<br>"
  @response << "Age: #{student['age']}<br>"
  @response << "Campus: #{student['campus']}<br><br>"
  @response
end