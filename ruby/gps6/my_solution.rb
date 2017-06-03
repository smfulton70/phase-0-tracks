# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#require relative is used for passing a local file to the file you are working in
#where as require is used for files that are not local
require_relative 'state_data'

class VirusPredictor
#populates the instance variables upon the creation of the instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls predicted deaths and speed of spread methods from below
  def virus_effects
    predicted_deaths(self)
    speed_of_spread(self)
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
  end

  private
# If you moved this keyword about virus_effects, you would not be able to call any method in the entire class from driver code outside the class (other
# than the initialize method that is invoked during object creation).


#Gives us a hard value of the number of deaths that will occur in a given state
  def predicted_deaths(this)
    # predicted deaths is solely based on population density
    case @population_density
    when 200..
      number_of_deaths = (@population * 0.4).floor
    when 150..200
      number_of_deaths = (@population * 0.3).floor
    when 100..150
      number_of_deaths = (@population * 0.2).floor
    when 50..100
      number_of_deaths = (@population * 0.1).floor
    when 0..50
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#uses population density to find how fast the virus will spread in a given state.
  def speed_of_spread(this) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
    when 200..
      speed += 0.5
    when 150..200
      speed += 1
    when 100..150
      speed += 1.5
    when 50..100
      speed += 2
    when 0..50
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 # I believe that this code should be done outside of the class, because it is calling a method that is a public method (though
 # the method calls two other methods that are private)


state_report = []
STATE_DATA.each do |state_name,population_info|
  state_report.push(VirusPredictor.new(state_name, population_info[:population_density], population_info[:population]))
end

state_report.length.times do |index|
    state_report[index].virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section