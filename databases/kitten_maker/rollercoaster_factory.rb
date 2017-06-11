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
    coaster_name VARCHAR(255),
    park VARCHAR(255),
    location VARCHAR(255),
    year_opened INT,
    number_of_loops INT,
    height_in_feet INT,
    floorless BOOLEAN,
    wooden BOOLEAN
  )
SQL

# create a rollercoaster table (if it's not there already)
db.execute(create_table_cmd)

# insert rollercoaster records into the rollercoaster table
def create_rollercoaster(db, coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden)
  db.execute("INSERT INTO rollercoasters (coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden) VALUES (?,?,?,?,?,?,?,?)", [coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden])
end

10.times do |i|
  puts "Please enter a name of a rollercoaster:"
  coaster_name = gets.chomp
  puts "Please enter the park where this rollercoaster is located:"
  park = gets.chomp
  puts "Please enter city and state where this park is located (in the format of CITY, ST):"
  location = gets.chomp
  puts "Please enter the year this rollercoaster opened:"
  year_opened =gets.chomp.to_i
  puts "Please enter the number of loops this rollercoaster has:"
  number_of_loops = gets.chomp.to_i
  puts "Please enter the height in feet of this rollercoaster:"
  height_in_feet = gets.chomp.to_i
  puts "Do your feet touch the floor in this rollercoaster? (Y or N):"
  case gets.chomp
  when "N","n","No","no","NO"
  	floorless = "true"
  when "Y","y","Yes","yes","YES"
 	floorless = "false"	
  end
  puts "Is this rollercoaster wooden? (Y or N):"
  case gets.chomp
  when "Y","y","Yes","yes","YES"
  		wooden = "true"
  when "N","n","No","no","NO"
  		wooden = "false"	
  end
  if i !=3
  	puts "---------"
    puts "New Rollercoaster:"
    puts
  end
  create_rollercoaster(db, coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden)
end

# explore ORM by retrieving data
rollercoasters = db.execute("SELECT * FROM rollercoasters")

rollercoasters.each do |rollercoaster|
	puts "#{rollercoaster['coaster_name']} is located in the park called #{rollercoaster['park']} in #{rollercoaster['location']}. It opened in #{rollercoaster['year_opened']} and it has #{rollercoaster['number_of_loops']} loops. It is #{rollercoaster['height_in_feet']} feet tall, and the floorless status is #{rollercoaster['floorless']} and the wooden status is #{rollercoaster['wooden']}."
	puts
end

