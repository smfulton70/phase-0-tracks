# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # call a method that passes a string of items
  # that method will split the long string using the space as a delimiter, and capture each of the resulting
  # array elements. We then iterate through the array elements and add each element as a key to a hash and
  # set the default quantity of 1 as the value for the hash.
  # print the list/hash to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: this method will take three arguments: a hash, a string, and an integer. 
# String and integer will be added as a key/value pair to the hash.
# output: the list/hash which will be updated with the new list item(s)

# Method to remove an item from the list
# input: list, item name
# steps: this method will take the hash/list and key/string as arguments, and will 
# remove the key/value pair based on the key/string passed as an argument.
# output: the list/hash which will be updated with the list item removed.

# Method to update the quantity of an item
# input: list/hash, item name, and new quantity (mandatory)
# steps: this method will take the hash/list and key/string and integer/quantity as arguments, and will
# change the value of the key/string to the input's new quantity. 
# output:the list/hash which will be updated with the new quantity for the key/value pair.

# Method to print a list and make it look pretty
# input: list/hash
# steps: Iterate through the hash and each key/value pair use string interpolation to format the display.
# output: A more user-friendly display for the user (but technically, there is no output because the return value is nil)

def create_list(items_string)
	items_array = items_string.split(' ')
	items_hash = Hash.new
	items_array.each do |item|
		items_hash[item] = 1
	end
	return items_hash
end

puts example_list = create_list("carrots apples cereal pizza")

def add_item(items_hash, item, quantity=1)
	items_hash[item] = quantity
	return items_hash
end

puts example_list_after_item_added = add_item(example_list, "cheese", 5)

def remove_item(items_hash, item)
	items_hash.delete(item)
	return items_hash
end

puts example_list_after_item_removed = remove_item(example_list_after_item_added, "apples")

def change_quantity(items_hash, item, quantity)
	items_hash[item] = quantity
	return items_hash
end

puts example_list_after_quantity_changed = change_quantity(example_list_after_item_removed, "carrots", 12)

def print_list(items_hash)
	items_hash.each do |key,value|
		puts "For the item of #{key}, please buy a quantity of #{value}."
	end
end

print_list(example_list_after_quantity_changed)

# What I have learned about writing pseudocode is that it is better to create some structure to the
# pseudocode, which I had not done before. I like the format of specifying what the input would be,
# what gets done with that input, and then what the output would be.

# My first inclination for this challenge was that I was going to be working with arrays, but when I saw
# the requirement that each item on the list was going to have a quantity, then it seemed like a no-brainer
# that we would use a hash. I cannot imagine trying to do this challenge without using hashes. It is only
# that first method that takes a string and converts it into an array, which then gets converted to a hash. 
# The rest of the methods all take the hash as an argument. I am positive that it is possible to do this
# challenge without using a hash at all, but I think it would be unnecessarily complex to do so.

# If the keyword of return is not used, the method returns the last evaluated expression in the method, however,
# if the last statement is a "puts", it will return nil. For example, the method of print_list returns nil,
# but that is OK because the function of that method does everything it needs to within the body, so it's
# really not necessary to have a non-nil return.

# You can pass strings, integers, arrays, and hashes as arguments for a method, and I have done so for all of
# those in this assignment.

# In this particular challenge, we have five methods, but they are all standalone methods and there is not one
# method that calls another method. What I did do for this assignment, though, is I created a new variable that
# gets assigned the return value of one method, and then that variable gets passed to the next method as an
# argument. Ultimately, it forms a chain such that the return value of each method has the cumulative results of
# all the previous methods.

# I think this challenge really solidified my understanding of return values in methods. I feel a lot more
# comfortable in that regard. I suppose what I could do is link all of the methods together so that you call
# the first method and that method uses its return value as an argument to call the next method, and so on, 
# such that calling the first method will ultimately get you the output for the last method. I'm not sure
# what purpose that would serve for this assignment, but it can be done and I would know how to do it.