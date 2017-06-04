def drinks
	puts "Margarita"
	2.times {yield}
	puts "____________"
end


drinks{puts "Tequila Sunrise"}

def beers
	puts "India Pale Ale"
	yield ("Peanut butter stout")
	yield ("Juniper Saison")
	puts "____________"
end

beers{ |name1| puts "I like #{name1}"}
beers{ |name1| puts "I love #{name1}"}

# Release 1

scotts_schools_array = ["Sunnyvale Structured School","Sunnyvale Junior High","Homestead High School","Foothill College","California State University, Chico","Notre Dame De Namur University","Dev Bootcamp"]

scotts_statuses_hash = {:name => "Scott Fulton",:age => 47, :marital_status => true, :number_of_children => 2, :city_of_residence => "Roseville, CA", 
	:employment_status => false, :social_security_number => "000-00-0000"}

scotts_schools_array.each do |school|	
	puts school
end
puts "____________"

# Iterate through the statuses hash, and printing out each status as a sentence.
scotts_statuses_hash.each do |status,value|
	puts "My #{status} is #{value}."
end
puts "____________"

# Iterate through the schools array, reversing the order of the string for each one.
puts "Scott's array of schools, before the change:"
puts scotts_schools_array
scotts_schools_array.map! do |school|
	school.reverse
end 
puts "____________"
puts "Scott's array of schools, after the change:"
puts scotts_schools_array

# Iterate through the schools array and undoing the previous string reversal.
puts "Scott's array of schools, before the change:"
puts scotts_schools_array
scotts_schools_array.map! do |school|
	school.reverse
end 
puts "____________"
puts "Scott's array of schools, after the change:"
puts scotts_schools_array
puts "____________"

# Release 2

puts "Release 2, Arrays"
puts scotts_schools_array
puts "____________"

# Iterate through the schools array and removing any school that has fewer than 18 characters.
scotts_schools_array.delete_if{|school| school.length < 18}

puts "Scott's Array of Schools after schools of length less than 18 have been deleted"
puts scotts_schools_array
puts "____________"

# Iterate through the schools array and counts schools whose lengths are 21.
scotts_schools_array.delete_if{|school| school.length != 21}

puts "Scott's Array of Schools after schools of length 21 have been deleted"
puts scotts_schools_array
puts "____________"

# Iterate through the schools array and drops schools until it reaches schools whose names DON'T start with "S".
scotts_schools_array.drop_while{|school| school.start_with?("S")}

puts "Scotts Array of Schools after schools starting with the letter S have been dropped."

puts scotts_schools_array
# Scott's comment: I have no idea why Sunnyvale Junior High is not removed from the array.
puts "____________"


puts "Release 2, Hashes"
puts scotts_statuses_hash
puts "____________"


# Iterate through the statuses hash and removing any status whose value is "Scott Fulton".
scotts_statuses_hash.delete_if{|status,value| value == "Scott Fulton"}

puts "Scotts Hash of Status after hash pair with a value of Scott Fulton has been removed."
puts scotts_statuses_hash
puts "____________"

# Iterate through the statuses hash and keeping any status whose value is not 000-00-0000.
scotts_statuses_hash.keep_if{|status,value| value != "000-00-0000"}

puts "Scotts Statuses Hash after all has pairs without a value of 000-00-0000 have been kept."
puts scotts_statuses_hash
puts "____________"

# Iterate through the statuses hash and returns every key/value pair whose value is not 47.
# However it does not change the original array.
scotts_statuses_hash.select{|status,value| value != 47}

# Iterate through the statuses hash and deletes every key/value pair whose value is not 47.
scotts_statuses_hash.delete_if{|status,value| value != 47}

puts scotts_statuses_hash
