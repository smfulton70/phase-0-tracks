# def array_search (array, integer)
# 	counter = 0
# 	array.each do |number| 
# 		if number == integer 
# 			puts counter 
# 		end
# 		counter+=1
# 	end
# 	if (counter > array.length)
# 		counter = nil
# 		p counter
# 	end
# end

# array = [2,4,6,8,10,12,14,16,18,20]
# array_search(array, 20)

def fibonacci(integer)
	array = [0,1,1]
    (integer-3).times {array.push(array[-1] + array[-2])}
    p array
    if array[-1] == 218922995834555169026
    	puts true
    end
end

fibonacci(100)
    