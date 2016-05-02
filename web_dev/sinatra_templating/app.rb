# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    breed VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/kittens/new' do
	erb :new_kittens
end

get '/kittens' do
	@kittens = db.execute("SELECT * FROM kittens")
	erb :home_kittens
end



# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/kittens' do
	db.execute("INSERT INTO kittens (name, breed, age) VALUES (?,?,?)", [params['name'], params['breed'], params['age'].to_i])
	redirect '/kittens'
end

# add static resources