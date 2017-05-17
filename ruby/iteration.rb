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

scotts_schools_array = ["Sunnyvale Structured School","Sunnyvale Junior High","Homestead High School","Foothill College","California State University, Chico","Notre Dame De Namur University","Dev Bootcamp"]

scotts_statuses_hash = {:name => "Scott Fulton",:age => 47, :marital_status => true, :number_of_children => 2, :city_of_residence => "Roseville, CA", 
	:employment_status => false, :social_security_number => "000-00-0000"}

scotts_schools_array.each do |school|	
	puts school
end
puts "____________"

scotts_statuses_hash.each do |status,value|
	puts "My #{status} is #{value}"
end
puts "____________"

puts "Scott's array of schools, before the change:"
puts scotts_schools_array
scotts_schools_array.map! do |school|
	school.reverse
end 
puts "____________"
puts "Scott's array of schools, after the change:"
puts scotts_schools_array

