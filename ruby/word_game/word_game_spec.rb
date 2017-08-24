require_relative 'word_game'

describe WordGame do
 let (:game) { WordGame.new("unicorn") }

 it "checks and displays guessed letter in word" do
  expect(game.check_letter(["u", "n"])).to eq "un _ _ _ _ n"
 end

 it "displays winning message when game is over" do
  expect(game.game_over(true)).to eq "Congrats, you're a WINNER!"
 end

  it "displays losing message when game is over" do
  expect(game.game_over(false)).to eq "Alas, someone has to be good at losing."
 end

end