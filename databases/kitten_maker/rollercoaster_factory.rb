# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("rollercoasters.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS rollercoasters(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    park VARCHAR(255),
    location VARCHAR(255),
    year_opened DATE,
    number_of_loops INTEGER,
    height_in_feet INTEGER,
    floorless BOOLEAN,
    wooden BOOLEAN
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_rollercoaster(db, name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden)
  db.execute("INSERT INTO rollercoasters (name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, park, location, number_of_loops, height_in_feet, floorless?, wooden?])
end

# rollercoaster_array = []
# 3.times do |i|
#   puts "Please enter a name of a rollercoaster:"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Please enter the park where this rollercoaster is located:"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Please enter city and state where this park is located (in the format of CITY, ST):"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Please enter the year this rollercoaster opened:"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Please enter the number of loops this rollercoaster has:"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Please enter the height in feet of this rollercoaster:"
#   rollercoaster_array[i].push(gets.chomp)
#   puts "Do your feet touch the floor in this rollercoaster? (Y or N):"
#   case gets.chomp
#   		when "N","n"
#   			rollercoaster_array[i].push(true)
#   		when "Y","y"
#   			rollercoaster_array[i].push(false)	
#   end
#   puts "Is this rollercoaster wooden? (Y or N):"
#   case gets.chomp
#   		when "Y","y"
#   			rollercoaster_array[i].push(true)
#   		when "N","n"
#   			rollercoaster_array[i].push(false)	
#   end
#   create_rollercoaster(db, rollercoaster_array[i])
# end

# explore ORM by retrieving data
# rollercoasters = db.execute("SELECT * FROM rollercoasters")
# rollercoasters.each do |rollercoaster|
# puts "#{rollercoaster['name']} is located in the park called #{rollercoaster['park']} in #{rollercoaster['location']}. It opened in #{rollercoaster['date']}
# and it has #{rollercoaster['number of loops']} loops. It is #{rollercoaster['height_in_feet']} feet tall, and the floorless status is #{rollercoaster['floorless?']}
# and the wooden status is #{rollercoaster['wooden?']}"
# end

