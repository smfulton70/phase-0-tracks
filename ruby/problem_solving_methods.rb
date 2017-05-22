# RELEASE 0

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


# RELEASE 1

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

# RELEASE 2

# The algorithm I chose to learn about is the Bucket sort. The general idea behind the algorithm
# is that you start off with an array of integers. You will see what the largest integer in that
# array, and you will create an empty SECOND array of the same size as the largest integer in the 
# populated array. You go through each element in that first array and whatever value it is (let's
# call it 'n', you populate the empty array at index 'n' with that value. I did look at a website
# that showed a visual representation of the two arrays, and that helped me understand how it's done.

# Although the website does not show how to create the program, it does mention a few of the pitfalls 
# associated with this approach. One is that we must know what the largest integer would be in that
# populated array. Secondly, we must also know how to handle duplicate numbers. Thirdly (and this was
# not even mentioned on the website) there still may be WAY more integers in the array than the value
# of the highest integer, so our second array might not be large enough. I know I will definitely have
# to think about how to approach these complications. I do know that if there happend to be an array of
# integers that goes from 1 to 20 with each integer represented exactly once, and there are 20 unsorted
# integers, I could tackle this algorithm without any problems, but handling the duplicates is going
# to make it much more challenging for me.

#PSEUDCODE

# We are given the following array: [3,6,9,12,15,18,2,5,8,11,14,17,20,1,4,7,10,13,16,19]
# We identify the largest value in this array.
# Whatever that value is, we create an empty second array of that size.
# We iterate through the populated array element by element, and the value 'n' of each element gets
# placed at the index n-1 of the second array.
# Once we have gone through all 20 elements of the populated array, our second array has been populated
# in ascending numerical order.


def array_bucket_sort (array)
	sorted_array = Array.new(array.length)
	array.each {|value| sorted_array[value-1] = value}
	return sorted_array
end

original_array = [3,6,9,12,15,18,2,5,8,11,14,17,20,1,4,7,10,13,16,19]
puts array_bucket_sort(original_array)    