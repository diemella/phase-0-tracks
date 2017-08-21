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

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1, reindeer_name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

end

# TEST CODE

p santa = Santa.new("male", "Jewish")
# p santa.speak
# p santa.eat_milk_and_cookies("snickerdoodle")
p santa.celebrate_birthday
p santa.get_mad_at("Vixen")
p santa.gender=("female")
p santa.age
p santa.ethnicity


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

# p santas
