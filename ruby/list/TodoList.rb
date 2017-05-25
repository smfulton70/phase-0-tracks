class TodoList 
	attr_reader :array_of_strings

	def initialize(array_of_strings)
		@array_of_strings = array_of_strings
	end

	def add_item(new_item)
		@new_item = new_item
		@array_of_strings.push(@new_item)
	end

	def delete_item(item_to_remove)
		@array_of_strings.delete(item_to_remove)
	end

	def get_items
		@array_of_strings
	end

	def get_item(index)
		@array_of_strings[index]
	end
end

puts list = TodoList.new(["do the dishes","mow the lawn"])
puts list.array_of_strings
puts "______"
puts list.add_item("mop the floor")
puts "______"
puts list.array_of_strings
puts "______"
puts list.delete_item("mop the floor")
puts "______"
puts list.array_of_strings
puts "______"
puts list.get_item(1)