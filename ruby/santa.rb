class Santa
	def initialize
		puts "Initializing Santa instance..."
	end
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
end

my_santa = Santa.new

my_santa.eat_milk_and_cookies("Peanut Butter cookie")

my_santa.speak

