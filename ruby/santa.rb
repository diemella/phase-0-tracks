# SantaCon Simulator

class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 #rand(1..140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1, reindeer_name)
  end

  # getter methods:

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # setter method:

  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end


# ---------------------------------------------


# TEST CODE

# p santa = Santa.new("male", "Jewish")
# # p santa.speak
# # p santa.eat_milk_and_cookies("snickerdoodle")
# p santa.celebrate_birthday
# p santa.get_mad_at("Vixen")
# p santa.gender=("female")
# p santa.age
# p santa.ethnicity


# ---------------------------------------------


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


# ---------------------------------------------


# Failed refactoring attempt using hash:

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


# ---------------------------------------------


# santas = []

# genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# Adding diverse initializing data to arrays:

# genders.push("transgender", "male")
# ethnicities.push("Vietnamese", "Irish")

# genders.length.times do |index|
#   santas << Santa.new(genders[index], ethnicities[index])
# end

# p santas


# ---------------------------------------------


# Build Many, Many Santas

# declare array of genders
# declare array of ethnicity
# create an empty array to hold santas
# assign 0 to santas_count
# until there are 100 santas,
  # push randomly selected gender and ethnicity to create an instance of santa into santas array
  # increment by 1
  # set new santa's age to a random number between 0 - 140 (move :age to attr_accessor)
# print out the attributes of each santa using the instance methods that you give access to that data


genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []

santas_count = 0

until santas_count == 100
  santas << santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = rand(1..140)
  santas_count += 1
end

# p santas


puts "Testing each Santa instance in the array: "

cookies = ["oreo", "snickerdoodle", "chocolate chip", "oatmeal cookie", "sugar cookie"]

reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas.each do |santa|

  puts "-" * 50

  santa.speak
  santa.eat_milk_and_cookies(cookies.sample)

  puts "Fun facts about Santa: "

  puts "Gender: #{santa.gender}"
  puts "Ethnicity: #{santa.ethnicity}"

  puts "Santa's age before celebrating his birthday: #{santa.age}"
  santa.celebrate_birthday
  puts "Santa's age after celebrating his birthday: #{santa.age}"


  naughty_reindeer = reindeers.sample
  puts "Santa's reindeer ranking before getting mad at #{naughty_reindeer}: #{santa.reindeer_ranking}"
  santa.get_mad_at(naughty_reindeer)
  puts "Santa's reindeer ranking after getting mad at #{naughty_reindeer}: #{santa.reindeer_ranking}"

end

# p santas.count