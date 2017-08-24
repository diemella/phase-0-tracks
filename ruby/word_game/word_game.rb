class WordGame

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