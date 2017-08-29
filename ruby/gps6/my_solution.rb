# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links a file to the current file using a relative path.
# require links to a pre-exisiting library of data/code.

require_relative 'state_data'

class VirusPredictor

# this method, which takes three parameters, creates an new instance of the VirusPredictor class

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this method executes the predicted_deaths and speed_of_spread methods for each instance.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# this methods determines the number of deaths based on population density and population size and returns a string containing the state and the number of deaths.

  def predicted_deaths
    # predicted deaths is solely based on population density

    case
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # this method calculates how many months it takes for the virus to spread based on population density, and it returns a string containing the speed (in months).

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, population_info|
  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # State names are strings, whereas population and population_density are symbols.
# What does require_relative do? How is it different from require?
  # require_relative links a file's info into the current document (kind of like copying and pasting the code from the other file into the current file), whereas require links to other pre-existing codes/info in libraries.
# What are some ways to iterate through a hash?
  # .each method (needs both key and value placeholder), .each_key method (needs placeholder for key only), and .each_value method (needs placeholder for value only)
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # Instance variables are available/accessible to all instance methods in the class.
# What concept did you most solidify in this challenge?
  # After this GPS, I feel I have a better understanding of scope. Also, I identify that I need to work on solidifying my understanding of how iterating through hashes.