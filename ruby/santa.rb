class Santa

  def initialize
    p "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

# TEST CODE

chris = Santa.new
chris.speak
chris.eat_milk_and_cookies("snickerdoodle")