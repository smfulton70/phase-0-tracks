# The program below is what a designer fills out on a person who becomes a client of the designer.
# It is in the form of a questionnaire that the designer fills out on behalf of the client, and it consists of five questions.
# The questions of name and decor theme take strings, the questions of age and number of children take integers.
# The question of whether the client will pay upfront takes a string, but the string is converted to a boolean.
# After all five questions are answered, the program then prints all the keys and values of the hash.
# Program then asks if there are any values that the designer wants to change. If the answer is no, then "Have a nice day" is printed and the program exits.
# If the answer is Yes, then the program asks what key the designer wants to change, and shows possible values.
# Designer enters the appropriate key
# If key is either age or number of children, it prompts the user to input a value which is taken as an integer. Otherwise, it is taken as a string.
# The string that the user enters gets converted to the appropriate symbol for that key.
# The updated key/value are then printed on the screen, and the program exits.


puts "Please enter the details of a client"
client = Hash.new
print "Name: "
client[:name] = gets.chomp
print "Age: "
client[:age] = gets.chomp.to_i
print "Number of children: "
client[:number_of_children] = gets.chomp.to_i
print "Preferred decor theme: "
client[:decor_theme] = gets.chomp
print "Will the client pay me upfront? (Y/N): "
client[:pay_upfront] = gets.chomp
case client[:pay_upfront]
when "Y",'y',"Yes","yes","Sure","sure","Yeah","yeah"
	client[:pay_upfront] = true
else
	client[:pay_upfront] = false
end
client.each {|key,value| puts "#{key}: #{value}"}
puts "Are there any values you would like to change? (Y/N)"
want_to_change = gets.chomp
case want_to_change
	when "No","no","N","n"
		puts "Have a nice day"
	when "Yes","yes","Y","y"
		puts "What key would you like to change? Input it as name, age, number_of_children, decor_theme, or pay_upfront."	
		key_to_change = gets.chomp
		puts "What should be the new value of this key?"
		case key_to_change
			when "age","number_of_children"
				value_to_change = gets.chomp.to_i
			else value_to_change = gets.chomp	
		end
		
		key_to_change = key_to_change.to_sym
		client[key_to_change] = value_to_change
		puts "Here are your new values below."
		client.each {|key,value| puts "#{key}: #{value}"}
end