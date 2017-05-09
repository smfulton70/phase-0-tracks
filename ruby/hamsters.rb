puts "What is your hamster's name?"
hamsterName = gets.chomp
puts "How loud is your hamster on a scale of 1 to 10 with 10 being extremely loud?"
loudness = gets.chomp.to_i
puts "What is your hamster's fur color?"
furColor = gets.chomp
puts "Is your hamster a good candidate for adoption? Yes or No"
adoption = gets.chomp
case adoption
when "Y","y","Yes","yes"
	adoption="true"
when "","0"
	adoption=nil
else adoption="false"
end

# if (adoption == "")
#	adoption = nil
#elsif (adoption=="y"||adoption=="Y"||adoption=="yes"||adoption=="Yes")
#	adoption="true"
#else adoption="false"
#end

puts "What is your hamster's estimate age?"
age = gets.chomp
if (age == "" || age == "0")
	age = nil
end
puts "Hamster's name: #{hamsterName}"
puts "Hamster loudness: #{loudness}"
puts "Hamster fur color: #{furColor}"
puts "Candidate for adoption: #{adoption}"
puts "Hamster's age: #{age}"
