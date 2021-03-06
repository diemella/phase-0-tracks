# PSEUDOCODE

# for CLASS
  # declare class for word guessing game
  # add getter/setter methods
  # state/attributes
    # word
    # guess count
    # game over
  # behavior methods
    # update and display correct guessed letter in word
    # determine game over

# for UI
  # get word from player 1
  # initialize an instance
  # set guess count to zero
  # print to screen guess count for debugging and to improve user experience
  # create an empty array to hold guessed letters
  # display to screen "_ " for each letter in the word
  # until guess count is equal to the length of the word
    # ask player 2 to guess(assuming single letter guesses only)
    # if word includes the guessed letter
      # increment guess count unless letter is already in guessed letters
      # add guessed letter into guessed letters array unless letter is already in guessed letters
      # check and display where the guessed letter is in the word
    # otherwise....
      # if guessed letter is not in guessed letters
        # shovel guessed letter into guessed letters
        # increment guess count
      # otherwise
        # no change to guess count
      # display current state to screen
    # display guess count for debugging and to improve user experience
    # determine if is game over
      # if yes, display appropriate message

  # --------------------------------------

class WordGame

  attr_reader :game_over
  attr_accessor :word, :guess_count

  def initialize(word)
    @word = word
    @guess_count = 0
    @game_over = false
  end

  def check_letter(guessed_letters)
    guessed_word = true
    @word.chars.each do |letter|
      if guessed_letters.include? letter
        print letter
      else
        print '_ '
        guessed_word = false
      end
    end
    puts ""
    guessed_word
  end

  def game_over(guessed_word)
    if guessed_word
      @guess_count = @word.length
      @game_over = true
      puts "Congrats, you're a WINNER!"
    elsif !guessed_word && @guess_count < @word.length
      @game_over = false
    else
     @game_over = true
     puts "Alas, someone has to be good at losing."
    end
  end

end

# USER INTERFACE

puts "Welcome to my Word Guessing Game!"

puts "Player 1: Give a word for Player 2 to guess."
word = gets.chomp.downcase

game = WordGame.new(word)

game.guess_count

puts "Player 2: You have #{word.length - game.guess_count} guess(es)."
print "The word to guess is: "

guessed_letters = []

game.check_letter(guessed_letters)

until game.guess_count == word.length
  puts "These are your guesses: #{guessed_letters}."
  puts "Player 2: Take a guess, one letter at a time."
  letter = gets.chomp.downcase.squeeze

  if word.include? letter
    game.guess_count += 1 unless guessed_letters.include? letter
    guessed_letters << letter unless guessed_letters.include? letter

  else
    if !guessed_letters.include? letter
      guessed_letters << letter
      game.guess_count += 1
    end

  end

  guessed_word = game.check_letter(guessed_letters)

  puts "You have #{word.length - game.guess_count} guesses left."

  game.game_over(guessed_word)

end

puts "Thanks for playing!"