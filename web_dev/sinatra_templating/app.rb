# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader"
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("rollercoasters.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @rollercoasters = db.execute("SELECT * FROM rollercoasters")
  erb :home
end

get '/rollercoasters/new' do
  erb :new_rollercoaster
end

get '/scott' do
  @justZeus = db.execute("SELECT coaster_name FROM rollercoasters WHERE coaster_name = 'Zeus'")
  erb :scott
end

# create new students via
# a form
post '/rollercoasters' do
  db.execute("INSERT INTO rollercoasters (coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden) VALUES (?,?,?)", [params['coaster_name'], params['park'], params['location'], params['year_opened'], params['number_of_loops'],params['height_in_feet'],params['floorless'],params['wooden']])
  redirect '/'
end

# add static resources