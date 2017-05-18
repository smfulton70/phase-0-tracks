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

# Release 2

# Iterate through the schools array and removing any school that has fewer than 18 characters.
scotts_schools_array.delete_if{|school| school.length < 18}

# Iterate through the schools array and counts schools whose lengths are 21.
scotts_schools_array.count{|school| school.length == 21}

# Iterate through the schools array and drops schools until it reaches schools whose names DON'T start with "S".
scotts_schools_array.drop_while{|school| school.start_with?("S")}

# Iterate through the statuses hash and removing any status whose value is "Scott Fulton".
scotts_statuses_hash.delete_if{|status,value| value == "Scott Fulton"}

# Iterate through the statuses hash and removing any status whose value has a length of 12.
scotts_statuses_hash.delete_if{|status,value| value.length == 12}

# Iterate through the statuses hash and keeps every key/value pair whose value is not 47.
scotts_statuses_hash.keep_if{|status,value| value != 47}


