# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + " :)" + " !"
#   end
# end

# # DRIVER CODE

# p Shout.yell_angrily("Arg")
# p Shout.yelling_happily("Yippee")


# Module Declaration

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + " :)" + " !"
  end
end

# Classes Declaration

class Coach
 include Shout
end

class Parent
 include Shout
end

# Driver Code

coach = Coach.new
p coach.yell_angrily("Drop and give me 10")
p coach.yelling_happily("We're going to finals")

parent = Parent.new
p parent.yell_angrily("Don't talk back to me")
p parent.yelling_happily("That's my girl")