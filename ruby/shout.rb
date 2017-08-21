module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + " :)" + " !"
  end
end

# DRIVER CODE

p Shout.yell_angrily("Arg")
p Shout.yelling_happily("Yippee")