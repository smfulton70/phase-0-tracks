class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(integer)
  	# puts "Woof!"*integer
  	integer.times {|i| puts "Woof!"}
  end
  def roll_over
  	puts "*Rolls Over*"
  end
  def dog_years(integer)
  	integer*7
  end
  def bark_at_mailman(decibel_level)
  	puts "Bark! Bark! Bark! (at #{decibel_level} decibels)."
  end
end

our_puppy = Puppy.new

our_puppy.fetch("squeaky toy")
our_puppy.speak(5)
our_puppy.roll_over
puts our_puppy.dog_years(10)
our_puppy.bark_at_mailman(80)