# Intro: This game involves two players, the Game Master and the Game Player. The Game Master runs the program in the Bash Shell and is
# immediately prompted to type in a word without spaces that the Game Player must guess. After the Game Master types in the word and hits <Enter>,
# The Game Master leaves the computer and lets the Game Player do the rest.

# The word that the Game Master enters gets passed to the word_to_guess_split method, which splits the word into an array consisting of all of the
# letters in that word. Then, each letter element of the array gets a "-" prepended to it. So if the Game Master inputs the word "scott" as the word
# to guess, after the word_to_guess_split method is invoked, the program will have an array called word_to_guess_array which will be 
# ["-s","-c","-o","-t","-t"]

# The method display_word_status always displays the first character in each string element in the word_to_guess_array, so after the word_to_guess_array
# is created, the display_word_status method is called and it returns the word_so_far variable, which at first will just be all hyphens. As a player
# enters a letter that matches the second character in a string element in that word_to_guess_array, then the first character in that string element (which
# is a hyphen) will be sliced out of that string element. A string variable called word_so_far will be comprised of the first character in each string
# element of the word_to_guess_array. word_so_far variable gets returned from the display_word_status method.

# As the player keeps entering letters, each unique letter the person guesses gets appended to a string variable called guesses_so_far. Each time the
# player enters a unique letter as a guess (one that the player has not yes guessed, and is not found in guesses_so_far), the variable counter gets 
# incremented by one. Once a player has guessed twice the number of letters as there are letters in the word to guess, and the puzzle is not yet solved, 
# the player loses and gets mocked, and the puzzle is revealed. If the player has entered all of the letters such that the entire word has been 
# revealed, the player has won and gets a congratulatory message.

class Game 
	attr_reader :word_to_guess_array, :word_so_far, :guesses_so_far
	attr_accessor :guess, :word_to_guess
	def initialize
		puts "Starting a new game!"
		@guesses_so_far = ""
	end

	def word_to_guess_split(word_to_guess)
		@word_to_guess = word_to_guess
		@word_to_guess_array = @word_to_guess.split("")
		@word_to_guess_array.map! do |value|
			value.prepend("-")
		end	
	end
	
	def display_word_status(guess='-')
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

	def string_of_guesses(guess)
		@guesses_so_far += guess
	end	
end

game = Game.new

print "Game Master: Please enter a word without spaces that the Game Player will have to guess: "
game.word_to_guess = gets.chomp
game.word_to_guess_split(game.word_to_guess)
puts ""
puts "Game Player: A word has now been created for you to guess."
puts ""
puts "This is what we currently have: "
puts ""
puts game.display_word_status
puts ""
puts ""
counter=0
loop do
	puts "Please enter a letter:"
	game.guess = gets.chomp
	game.string_of_guesses(game.guess)
	if !game.guesses_so_far.match(game.guess)
		counter+=1
	end
	puts ""
	puts "And here is what we have now:"
	puts ""
	puts game.display_word_status(game.guess)
	puts ""
	
	if (counter == 2*game.word_to_guess.length && game.word_so_far.match('-'))
		puts "You are an absolute disaster, an utter failure. You could not guess the word in twice the number of guesses as there were	letters in the puzzle. Sad! The word was #{game1.word_to_guess}"
		break
	elsif !game.word_so_far.match('-')
		puts "Congratulations! You have solved the puzzle! Vanna, you are amazing as always!"
		break
	end
end
