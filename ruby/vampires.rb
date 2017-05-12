puts "How many employees would you like to process?"
number_of_employees=gets.chomp.to_i
for i in 1..number_of_employees

	puts "What is your name?"
	your_name=gets.chomp
	puts "How old are you?"
	your_age=gets.chomp.to_i 
	puts "What year were you born?"
	year_born=gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread=gets.chomp
	case garlic_bread
	when "Yes","yes","Y","y","Yeah","yeah"
		garlic_bread = true
	else garlic_bread = false
	end

	puts "Would you like to enroll in the company's health insurance?"
	health_insurance=gets.chomp

	case health_insurance
	when "Yes","yes","Y","y","Yeah","yeah"
		health_insurance = true
	else health_insurance = false
	end

	time = Time.new

	# This test passes if the user submits something other than the two ages that are valid based on the year the user was born 
	# (irrespective of whether a birthday has occurred this year)
	if ((time.year - your_age < year_born) || (time.year - your_age - 1 > year_born))
		age_correct = false
	else
		age_correct = true
	end
	# This test passes as true if the user does provide the correct age AND likes garlic bread OR does want health insurance.
	if (age_correct == true) && ((garlic_bread == true) || (health_insurance == true))
		vampire_status = "Probably not a vampire."
	end
	# This test passes as true if the user does not provide the correct age AND does not like garlic bread OR doesn't want health insurance.
	if (age_correct == false) && ((garlic_bread == false) || (health_insurance == false))
		vampire_status = "Probably a vampire"
	end
	puts "Please list any allergies that you have, one at a time. Please type 'done' when finished"
	begin
		print "Allergy: "
		allergy = gets.chomp
		if allergy == "sunshine"
			vampire_status = "Probably a vampire"
			break
		end
	end while allergy != "done"
	# This test passes as true if the user does not provide the correct age AND does not like garlic bread AND doesn't want health insurance.
	if (age_correct == false) && ((garlic_bread == false) && (health_insurance == false))
		vampire_status = "Almost certainly a vampire."
	end
	# This test passes if the user has a super obvious vampire name.
	if ((your_name == "Drake Cula") || (your_name == "Tu Fang"))
		vampire_status = "Definitely a vampire"
	end
	# This test passes if the user does not provide the correct age, but does like garlic bread AND does want health insurance.
	if (age_correct == false) && (garlic_bread == true) && (health_insurance == true)
		vampire_status = "Results inconclusive"
	end
	puts vampire_status
	puts "_____________________"
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


