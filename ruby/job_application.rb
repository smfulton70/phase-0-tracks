applicant = {
	name: "Scott Fulton",
	address: "1717 Tanglewood Ln, Roseville, CA 95661",
	email: "smfulton70@gmail.com",
	phone: "(650) 862-7700",
	fave_shade_of_blue: "Navy",
	wallpaper_preferences: ["Paisley","Chevrons"],
	ombre_is: "So last season"
}

puts applicant

# DRIVER CODE
applicant[:name] = "Scott Michael Fulton"

puts applicant

applicant[:was_hired] = false

puts applicant

myString = :name
puts applicant[myString]

applicant[:name] + applicant[:address]

puts applicant
