

class Game 
	attr_reader :word_to_guess
	attr_accessor :word_to_guess_array, :guess, :word_so_far
	def initialize
		puts "Starting a new game!"
		@word_to_guess = "cat"
		@word_to_guess_array = @word_to_guess.split("")
		@word_to_guess_array.map! do |value|
			value.prepend("-")
		end
	end

	def display_word_status(guess)
		@guess = guess
		@word_so_far = ""
		@word_to_guess_array.map! do |value|
			if value[1] == @guess
				value.slice!(1)
			else value
			end
		end
		@word_to_guess_array.each do |value|
			@word_so_far += "#{value[0]}"
		end	
		return @word_so_far
	end
end

game = Game.new

puts "I am thinking of a word pertaining to Ruby and you have to guess what it is by inputting a letter in each guess."
puts "This is what we currently have: "
puts ""
game.word_to_guess_array.each do |value|
	print value[0]
end
puts ""
puts ""
counter=0
loop do
	puts "Please enter a letter:"
	game.guess = gets.chomp
	puts ""
	puts "And here is what we have now:"
	puts ""
	puts game.display_word_status(game1.guess)
	puts ""
	counter+=1
	if (counter == 2*game.word_to_guess.length && game.word_so_far.match('-'))
		puts "You are an absolute disaster, an utter failure. You could not guess the word in twice the number of guesses as there were	letters in the puzzle. Sad! The word was #{game1.word_to_guess}"
		break
	elsif !game.word_so_far.match('-')
		puts "Congratulations! You have solved the puzzle! Vanna, you are amazing as always!"
		break
	end
end
