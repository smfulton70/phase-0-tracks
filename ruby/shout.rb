# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end
# 	def self.yell_happily(words)
#   	words + "!!!" + " :)"
# 	end
# end

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
 	end
 	def yell_happily(words)
    	words + "!!!" + " :)"
 	end
end

class Taxi_Driver
	include Shout
end

class PE_Teacher
	include Shout
end

travis = Taxi_Driver.new
puts travis.yell_angrily("You talkin' to me? You talking to me?")

bill = PE_Teacher.new
puts bill.yell_happily("Way to go")







