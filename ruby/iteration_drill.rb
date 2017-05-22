# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each do |value|
	if zombie_apocalypse_supplies.last == value
		print value
	else print "#{value}*"
	end
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
counter = 0
while (zombie_apocalypse_supplies[counter] != nil) && (zombie_apocalypse_supplies[counter+1] != nil) && (swapped == false)
loop do	
	swapped = false
	if (zombie_apocalypse_supplies[counter] > zombie_apocalypse_supplies[counter+1])
		temp = zombie_apocalypse_supplies[counter]
		zombie_apocalypse_supplies[counter] = zombie_apocalypse_supplies[counter+1]
		zombie_apocalypse_supplies[counter+1] = temp
		swapped = true
	end
	counter+=1
	break if not swapped
end

print zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def do_we_have_it(item,array)
	counter=0
	have_it=false
	loop do
		if array[counter] == item
			have_it = true
			break
		else have_it = false
		end
		break if array[counter] == nil
		counter+=1
	end
	return have_it
end

puts "Please enter an item to see if we have it in our zombie apocalypse supplies: "
my_item = gets.chomp
puts do_we_have_it(my_item,zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def keep_only_five(array)
	counter=0
	loop do
		if array[counter] != nil
			counter+=1
		else break
		end
	end
	remove_this_number = counter - 5
	loop do
		if remove_this_number > 0
			array[counter-1] = ""
			remove_this_number -= 1
			counter -= 1
		else break
		end
	end
	return array		
end

#This method call will lop off as many items as necessary at the end of the passed array to leave 5 items.
puts keep_only_five(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
all_survivor_supplies = zombie_apocalypse_supplies.concat(other_survivor_supplies)
puts "____________________"
puts all_survivor_supplies.uniq

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each do |key,value|
	print "#{key}-#{value}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals.delete_if { |key,value| value>=2000 }
puts extinct_animals


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.update(extinct_animals){|key,value| value-3}	
puts extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
possibly_extinct = ["Andean Cat","Dodo","Saiga Antelope"]

counter=0
loop do
 	if extinct_animals.has_key?(possibly_extinct[counter])
 		puts "#{possibly_extinct[counter]} is extinct."
 	else
 		puts "#{possibly_extinct[counter]} is not extinct."
	end
	counter+=1
	if (counter > (possibly_extinct.length - 1)) 
		then break
	end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
