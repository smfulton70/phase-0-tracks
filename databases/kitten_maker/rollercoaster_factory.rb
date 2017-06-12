# Rollercoasters

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

#Changes the name of a coaster for a user
def modify_coaster(db, coaster_to_modify)
	print "Please type in the new name of the rollercoaster: "
	old_name=coaster_to_modify
	new_name=gets.chomp
	db.execute("UPDATE rollercoasters SET coaster_name='#{new_name}' WHERE coaster_name='#{old_name}'")
end

# provides appropriate language in accordance with the values of booleans
def boolean_string(rollercoaster)
	boolean_string = ""
	if rollercoaster["floorless"] == 1
		boolean_string+=" and it is floorless, "
	else
		boolean_string+=" and it is not floorless, "
	end

	if rollercoaster["wooden"] == 1
		boolean_string+=" and it is wooden."
	else
		boolean_string+=" and it is not wooden."
	end
	return boolean_string
end


# Allow user to input information about 10 rollercoasters
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
  floorless=gets.chomp
  case floorless
  when "N","n","No","no","NO"
  	floorless.to_i
  	floorless=1
  when "Y","y","Yes","yes","YES"
 	floorless.to_i
 	floorless=0
  end
  puts "Is this rollercoaster wooden? (Y or N):"
  wooden=gets.chomp
  case wooden
  when "Y","y","Yes","yes","YES"
  		wooden.to_i
  		wooden=1
  when "N","n","No","no","NO"
  		wooden.to_i
  		wooden=0
  end
  if i !=10
  	puts "---------"
    puts "New Rollercoaster:"
    puts
  end
  create_rollercoaster(db, coaster_name, park, location, year_opened, number_of_loops, height_in_feet, floorless, wooden)
end

# explore ORM by retrieving data
rollercoasters = db.execute("SELECT * FROM rollercoasters")

#Print to console a short paragraph about each rollercoaster in the database
rollercoasters.each do |rollercoaster|
	puts
	print "#{rollercoaster['coaster_name']} is located in the park called #{rollercoaster['park']} in #{rollercoaster['location']}. It opened in #{rollercoaster['year_opened']} and it has #{rollercoaster['number_of_loops']} loops. It is #{rollercoaster['height_in_feet']} feet tall,"
	print boolean_string(rollercoaster)
	puts
end

#Start off a query string
queryString = "SELECT * FROM rollercoasters WHERE "

puts
puts "--------------------ROLLERCOASTER QUESTIONNAIRE-----------------------------"
puts
puts "I will help you find a rollercoaster that meets your tastes."
puts "How much do you like to go upside down? (On a scale of 0 to 2, with 0 being not at all and 2 being 'Hell yes!')"
case gets.chomp
when "0"
  	queryString += "number_of_loops = 0"
when "1"
  	queryString += "number_of_loops <= 3"
when "2"
  	queryString += "number_of_loops > 3"	
end
puts "Do you like rickety, shaky rollercoasters? (Y or N)"
case gets.chomp
when "Y","y","Yes","yes","YES"
  	queryString += " AND wooden=1"
when "N","n","No","no","NO"
  	queryString += " AND wooden=0"	
end
puts "How do you feel about the height of a rollercoaster? (On a scale of 0 to 2, with 0 being you are totally chicken about heights and 2 being 'The taller, the better!')"
case gets.chomp
when "0"
  	queryString += " AND height_in_feet < 75"
when "1"
  	queryString += " AND height_in_feet > 75 AND height_in_feet < 150"
when "2"
  	queryString += " AND height_in_feet >= 150"	
end
puts "Do you like your feet to dangle when you ride a rollercoaster? (Y or N)"
case gets.chomp
when "Y","y","Yes","yes","YES"
  	queryString += " AND floorless=1"
when "N","n","No","no","NO"
  	queryString += " AND floorless=0"	
end

#A new, smaller array of rollercoasters titled rollercoaster_tastes is generated based on the user's preferences
rollercoasters_tastes = db.execute(queryString)

puts
puts "--------------------ROLLERCOASTER RECOMMENDATIONS!!-----------------------------"
puts
puts "Here are some recommendations of rollercoasters that you should try, based on your inputted preferences."

rollercoasters_tastes.each do |rollercoaster|
	print "#{rollercoaster['coaster_name']} is located in the park called #{rollercoaster['park']} in #{rollercoaster['location']}. It opened in #{rollercoaster['year_opened']} and it has #{rollercoaster['number_of_loops']} loops. It is #{rollercoaster['height_in_feet']} feet tall,"
	print boolean_string(rollercoaster)
end

puts "--------------------ROLLERCOASTER UPDATES-----------------------------"
puts
puts "Once again, here is the list of rollercoasters currently in the database."
puts "Are there any modifications that you would like to make to the table full of rollercoasters?"
puts

rollercoasters.each do |rollercoaster|
  puts "#{rollercoaster['coaster_name']}, #{rollercoaster['park']}, #{rollercoaster['location']}, #{rollercoaster['year_opened']}, #{rollercoaster['number_of_loops']}, #{rollercoaster['height_in_feet']}, #{rollercoaster['floorless']}, #{rollercoaster['wooden']}"
  puts
end


puts "If so, please type in the name of the rollercoaster here: "
coaster_to_modify = gets.chomp
modify_coaster(db, coaster_to_modify)

#Refresh the rollercoasters array of hashes from the database update
rollercoasters = db.execute("SELECT * FROM rollercoasters")

rollercoasters.each do |rollercoaster|
  puts "#{rollercoaster['coaster_name']}, #{rollercoaster['park']}, #{rollercoaster['location']}, #{rollercoaster['year_opened']}, #{rollercoaster['number_of_loops']}, #{rollercoaster['height_in_feet']}, #{rollercoaster['floorless']}, #{rollercoaster['wooden']}"
end

# Medusa, Six Flags Discovery Kingdom, Vallejo, CA, 2000, 7, 150, Y, N
# Gold Striker, California's Great America, Santa Clara, CA, 2013, 0, 108, N, Y
# Giant Dipper, Santa Cruz Beach Boardwalk, Santa Cruz, CA, 1924, 0, 70, N, Y
# Goliath, Six Flags Magic Mountain, Valencia, CA, 2000, 0, 235, N, N
# Ghost Rider, Knott's Berry Farm, Buena Park, CA, 1998, 0, 118, N, Y
# Space Mountain, Disneyland, Anaheim, CA, 2005, 0, 80, N, N
# Desperado, Buffalo Bill's Hotel and Casino, Primm, NV, 1994, 0, 209, N, N
# Twisted Colossus, Six Flags Magic Mountain, Valencia, CA, 2015, 2, 121, N, Y
# Big Apple Coaster, New York, New York Hotel and Casino, Las Vegas, NV, 1997, 2, 203, N, N
# Undertow, Santa Cruz Beach Boardwalk, Santa Cruz, CA, 2013, 0, 50, N, N
