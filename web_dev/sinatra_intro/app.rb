# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


def output(students_arr)
  response = ""
  students_arr.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

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
  output(students)
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# 9.4!

get '/contact' do
  "Please refer to this address: 3891 Baltimore Dr, Riches, WL 10923"
end

get '/great_job' do
  extra = (params[:name]) ? ", #{params[:name]}!" : "!"
  "Great job" + extra 
end

get '/:a/add/:b' do
  a = params['a'].to_i
  b = params['b'].to_i
  "#{a} + #{b} = #{a + b}"
end

get '/students/search/campus/:campus' do
  list = db.execute("SELECT * FROM students WHERE campus=?;", [params[:campus]])
  output(list)
end

