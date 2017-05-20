# Program asks the user to input a full name consisting of first and last names.
# Take that full name inputted and send it to new_alias method
# New alias method takes that full name and splits it into two strings delimited by the space, puts them into a two-item array, and reverses their
# order within that array
# new_alias method sends that array to the next_vowel method
# next_vowel method ensures that the strings don't have their first letters capitalized.
# next_vowel method breaks each item in the array into a sub-array of letters
# next vowel method iterates through each letter of the last name and compares it to the string of "aeiou" to test if it exists in that string of
# vowels. If it does, it tests to see if it is the last vowel and if it is, that letter gets switched to the first item in the vowel string ("a")
# Otherwise, it gets converted to the next vowel in the vowel string.
# next_vowel method then repeats the same process for the first name
# after both of these strings are fully processed by having their vowels switched to the next vowels in the alphabet, the next_vowel method
# sends the adjusted string to the next_consonant method
# next_consonant method does the exact same thing that next_vowel method does, but just compares the letters to string of "bcdfghjklmnpqrstvwxyz"
# next_consonant method returns a first-letter-capitalized version of the new alias string.
# Person can enter as many names as he wants and after each time, the new alias is printed.
# Person enters "Done" when he is done entering names.
# The original name and the new alias is created into a two-item array called paired_array
# Each paired array is entered into an array with as many elements as names that the user input.
# At end of program, the original name and its associated new alias is printed out by accessing the appropriate values in the nested array.

def new_alias(original_name)
	full_name_array = original_name.split(' ')
	reversed_name_array = full_name_array.reverse
	next_vowel(reversed_name_array)
end

def next_vowel(array)
	vowel_array = ['a','e','i','o','u']
	string_1 = array[0].downcase
	string_2 = array[1].downcase
	letter_array_1 = string_1.split('')
	letter_array_2 = string_2.split('')
	counter = 0
	letter_array_1.each do |letter|
		if vowel_array.include?(letter)
		   if letter_array_1[counter] == vowel_array[-1]
		   		letter_array_1[counter] = vowel_array[0]
		   	else
		   		letter_array_1[counter] = vowel_array[vowel_array.index(letter_array_1[counter]) + 1]
			end
		end
		counter+=1
	end
    counter = 0
	letter_array_2.each do |letter|
		if vowel_array.include?(letter)
		   if letter_array_2[counter] == vowel_array[-1]
		   		letter_array_2[counter] = vowel_array[0]
		   	else
		   		letter_array_2[counter] = vowel_array[vowel_array.index(letter_array_2[counter]) + 1]
			end
		end
		counter+=1
	end
	
	next_consonant([letter_array_1.join,letter_array_2.join])
	
end

def next_consonant(array)
	consonant_array = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	string_1 = array[0].downcase
	string_2 = array[1].downcase
	letter_array_1 = string_1.split('')
	letter_array_2 = string_2.split('')
	counter = 0
	letter_array_1.each do |letter|
		if consonant_array.include?(letter)
		   if letter_array_1[counter] == consonant_array[-1]
		   		letter_array_1[counter] = consonant_array[0]
		   	else
		   		letter_array_1[counter] = consonant_array[consonant_array.index(letter_array_1[counter]) + 1]
			end
		end
		counter+=1
	end
    counter = 0
	letter_array_2.each do |letter|
		if consonant_array.include?(letter)
		   if letter_array_2[counter] == consonant_array[-1]
		   		letter_array_2[counter] = consonant_array[0]
		   	else
		   		letter_array_2[counter] = consonant_array[consonant_array.index(letter_array_2[counter]) + 1]
			end
		end
		counter+=1
	end
	
	final_name_1 = letter_array_1.join
	final_name_2 = letter_array_2.join

	final_return = "#{final_name_1.capitalize} #{final_name_2.capitalize}"

	puts final_return
	return final_return
end

# DRIVER CODE


print "Enter your first and last name. Type Done when you want to quit: "
name = gets.chomp
counter = 0
array_of_paired_arrays = Array.new
until name == "Done"
	original_name = name
	final_alias = new_alias(name)
	paired_array = [original_name,final_alias]
	array_of_paired_arrays << paired_array
	counter += 1
	print "Want to enter another name? : "
	name = gets.chomp
end

counter.times {|i| puts "#{array_of_paired_arrays[i][0]}'s special alias is #{array_of_paired_arrays[i][1]}"}

