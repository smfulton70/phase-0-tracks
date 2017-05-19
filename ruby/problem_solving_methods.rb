def array_search (array, integer)
	counter = 0
 	# Iterate through each number in array to see if it matches the passed integer
 	array.each do |number| 
 		if number == integer 
 			puts counter 
		elsif (number != integer) && (counter == (array.length-1))
			counter = nil
 			p counter
 		else counter+=1
 		end
 	end
 end

# Create an array called my_array
my_array = [2,4,6,8,10,12,14,16,18,20]
# Call the array_search method with my_array as the array argument and 20 as the number to match, which should return the index of the element in the array
array_search(my_array, 20)
# Call the array_search method with my_array as the array argument and 3 as the number to match, which should return nil.
array_search(my_array, 3)


def fibonacci(integer)
	# initialize an array with the first three numbers of the Fibonacci series.
	array = [0,1,1]
    # Add new numbers to the array that are the sum of the previous two numbers in the array
    (integer-3).times {array.push(array[-1] + array[-2])}
    p array
    # true is printed if the method call with 100 entered as the argument succesfully prints the correct 100th number in the Fibonacci series.
    if array[-1] == 218922995834555169026
    	puts true
    end
end

fibonacci(100)
    