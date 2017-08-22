class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof! " * int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    int * 7
  end

  def sit
    puts "*sit*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(2)
puppy.sit