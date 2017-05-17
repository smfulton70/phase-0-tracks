def drinks
	puts "Margarita"
	2.times {yield}
end


drinks{puts "Tequila Sunrise"}

def beers
	puts "India Pale Ale"
	yield ("Peanut butter stout")
	yield ("Juniper Saison")
end

beers{ |name1| puts "I like #{name1}"}
beers{ |name1| puts "I love #{name1}"}
