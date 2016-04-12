
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative has a local data load path as opposed to require which can be
# taken from an external source.
#
require_relative 'state_data'

class VirusPredictor

  # For each new instance, the variables are passed as arguments and set locally
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls two instance methods as a way to break up the work into predicted deaths
  # and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # calculate the number of deaths based on population density, population, and state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"
    end

  # calculate the speed of the spead using density and state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n" 
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |name, data|
  states = VirusPredictor.new(name, data[:population_density], data[:population])
  states.virus_effects  
end

#=======================================================================
=begin Reflection Section 

What are the differences between the two different hash syntaxes shown in the state_data file?
  One uses the colon syntax for declaring symbols for keys while the other uses the arrow (=>) 
  syntax for declaring string-hash key-value pairs respectively.
What does require_relative do? How is it different from require?
  Require and require relative imports code into the current scope; it transports another file
  to be available within the current one. The difference is that require relative does just
  that, it requires something within the relative directory as opposed to the full root
  directory or remote directory or path.
What are some ways to iterate through a hash?
  The while and with counter loop, the for loop, the each method, the map method, the times method, etc...
When refactoring virus_effects, what stood out to you about the variables, if anything?
  They weren't being used. The methods themselves were accessing its own attributes or instance
  methods.
What concept did you most solidify in this challenge?
  The public private status of methods and instance variables or attributes of ruby classes.

=end 


