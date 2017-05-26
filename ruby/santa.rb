class Santa
	# Begin Release 3

	attr_accessor :gender, :age
	attr_reader :ethnicity
	
	# End Release 3

	# Begin Release 0
	
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		# Begin Release 1
		@gender = gender 
		@ethnicity = ethnicity 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		# End Release 1
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
	# End Release 0
	
	# Begin Release 2
	def celebrate_birthday
		@age = @age + 1
	end
	def get_mad_at(name)
		current_index_of_deer = @reindeer_ranking.index(name)
		@reindeer_ranking.rotate!(current_index_of_deer + 1)
	end
	
	# The below setter and getter methods are commented out because they were refactored in Release 3
	# def gender=(gender)
	#	@gender = gender
	# end
	# def age
	#	@age
	# end
	# def ethnicity
	#	@ethnicity
	# end

	# End Release 2
end

#Begin Release 0 Driver Code - Code is now commented out due to the change in initialize method that now takes two arguments

# my_santa = Santa.new
# my_santa.eat_milk_and_cookies("Peanut Butter cookie")
# my_santa.speak

# End Release 0 Driver Code

# Begin Release 1 Driver Code

gender_array = ["male","female","cisgender","transgender","androgynous","gender fluid","metrosexual","lumbersexual"]
ethnicity_array = ["Mexican","Canadian","Slovenian","Finnish","Korean","Paraguayan","Egyptian","Israeli","Icelandic",
	"Venezuelan","Bahamanian","Estonian","Mongolian","Burmese","Thai","Somalian","Albanian","Kazakh","Armenian"]
santa_array = Array.new

counter=0
loop do
	santa_array[counter] = Santa.new(gender_array[counter],ethnicity_array[counter])	
	counter +=1
	break if counter == gender_array.length
end

# End Release 1 Driver Code

# Begin Release 2 Driver Code

puts "Release 2: Calling methods of a new Santa"
puts ""
puts santa_array[0].celebrate_birthday
puts santa_array[0].get_mad_at("Prancer")
puts santa_array[0].gender="lumbersexual"
puts santa_array[0].age
puts santa_array[0].ethnicity
puts "_________Another Santa_________"
puts santa_array[4].celebrate_birthday
puts santa_array[4].get_mad_at("Cupid")
puts santa_array[4].gender="gender fluid"
puts santa_array[4].age
puts santa_array[4].ethnicity 

# End Release 2 Driver Code

# No Driver Code that is specific to Release 3

# Begin Release 4 Driver Code

santa_100 = Array.new
100.times do |x|
	santa_100[x] = Santa.new(gender_array.sample,ethnicity_array.sample)
	santa_100[x].age = rand(140)
end

100.times do |x|
	puts "Santa ##{x+1}: Age is #{santa_100[x].age}, Gender is #{santa_100[x].gender}, Ethnicity is #{santa_100[x].ethnicity}"
end

# End Release 4 Driver Code