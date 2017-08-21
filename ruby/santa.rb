class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

# TEST CODE

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("snickerdoodle")


#  Initialization Code from Release:

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas


# Refactoring Attempt | Diverse Initialization:

# santas = []

# gender_ethnicity = {
#   "agender" => "black",
#   "female" => "Latino",
#   "bigender" => "white",
#   "male" => "Japanese",
#   "female" => "prefer not to say",
#   "gender fluid" => "Mystical Creature (unicorn)",
#   "N/A" => "N/A",
# }

# gender_ethnicity["female"] = "Latino"
# gender_ethnicity["transgender"] = "Jew"
# gender_ethnicity["male"] = "Irish"

# gender_ethnicity.each do |gender,ethnicity|
#   santas << Santa.new(gender,ethnicity)
# end

# p santas

santas = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.push("transgender", "male")
ethnicities.push("Vietnamese", "Irish")

genders.length.times do |index|
  santas << Santa.new(genders[index], ethnicities[index])
end

p santas