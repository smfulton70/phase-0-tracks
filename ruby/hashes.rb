puts "Please enter the details of a client"
client = Hash.new
print "Name: "
client[:name] = gets.chomp
print "Age: "
client[:age] = gets.chomp.to_i
print "Number of children: "
client[:number_of_children] = gets.chomp.to_i
print "Preferred decor theme: "
client[:decor_theme] = gets.chomp
print "Will you pay me upfront? (Y/N): "
client[:pay_upfront] = gets.chomp
case client[:pay_upfront]
when "Y",'y',"Yes","yes","Sure","sure","Yeah","yeah"
	client[:pay_upfront] = true
else
	client[:pay_upfront] = false
end
print client
