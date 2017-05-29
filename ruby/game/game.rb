

class Game 
	attr_accessor :word_to_guess_array, :guess, :word
	def initialize
		puts "Starting a new game!"
		@word_to_guess = "DaisysDonuts"
		@word_to_guess_array = @word_to_guess.split("")
		@word_to_guess_array.map! do |value|
			value.prepend("-")
		end
	end

	def display_word_status(guess)
		@guess = guess
		@word = ""
		@word_to_guess_array.map! do |value|
			if value[1] == @guess
				value.slice!(1)
			else value
			end
		end
		@word_to_guess_array.each do |value|
			@word += "#{value[0]}"
		end	
		return @word
	end
end

game1 = Game.new

puts "I am thinking of a word pertaining to Ruby and you have to guess what it is by inputting a letter in each guess."
puts "This is what we currently have: "
puts ""
game1.word_to_guess_array.each do |value|
	print value[0]
end
puts ""
puts ""
puts "What is your letter guess?"
game1.guess = gets.chomp
puts ""
puts "And here is what we have now:"
puts ""
puts game1.display_word_status(game1.guess)
loop do
	puts "Please enter another letter:"
	game1.guess = gets.chomp
	puts ""
	puts "And here is what we have now:"
	puts ""
	puts game1.display_word_status(game1.guess)
	puts ""
	if !game1.word.match('-')
		puts "Congratulations! You have solved the puzzle! Vanna, you are amazing as always!"
		break
	end
end
