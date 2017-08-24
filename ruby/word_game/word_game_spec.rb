require_relative 'word_game'

describe WordGame do
 let (:game) { WordGame.new("unicorn") }

 it "checks guessed letters in word" do
  expect(game.check_letter(["u","n","i", "c", "o", "r", "n"])).to eq true
 end

 it "displays winning message when game is over" do
  expect(game.game_over(true)).to eq puts "Congrats, you're a WINNER!"
 end

 it "displays losing message when game is over" do
  expect(game.game_over(true)).to eq puts "Alas, someone has to be good at losing."
 end

  it "does not display message when game is not over" do
  expect(game.game_over(false)).to eq false
  end

end