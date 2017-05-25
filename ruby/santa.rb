class Santa
	attr_accessor :gender
	attr_reader :age, :ethnicity

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def celebrate_birthday
		@age = @age + 1
	end
	def get_mad_at(name)
		current_index_of_deer = @reindeer_ranking.index(name)
		@reindeer_ranking.rotate!(7 - current_index_of_deer)
	end
	
end

# my_santa = Santa.new

# my_santa.eat_milk_and_cookies("Peanut Butter cookie")

# my_santa.speak

gender_array = ["male","female","cisgender","transgender","androgynous","gender fluid","metrosexual","lumbersexual"]
ethnicity_array = ["Mexican","Canadian","Slovenian","Finnish","Korean","Paraguayan","Egyptian","Israeli"]
santa_array = Array.new

counter=0
loop do |variable|
	santa_array[counter] = Santa.new(gender_array[counter],ethnicity_array[counter])	
	counter +=1
	break if counter == gender_array.length
end

puts santa_array[0].celebrate_birthday
puts santa_array[0].get_mad_at("Prancer")
puts santa_array[0].gender="lumbersexual"
puts santa_array[0].age
puts santa_array[0].ethnicity

puts santa_array[4].celebrate_birthday
puts santa_array[4].get_mad_at("Cupid")
puts santa_array[4].gender="gender fluid"
puts santa_array[4].age
puts santa_array[4].ethnicity 



