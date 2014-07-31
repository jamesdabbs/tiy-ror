require "minitest/autorun"
require "./hangman"

describe("The hangman game") do
  it "isn't finished when it starts" do
    game = Hangman.new("cat")
    assert game.finished? == false
  end

  it "lets players make a guess"

  it "removes letters from available letters after a guess"

  it "only lets you guess from available letters"

  it "can by solved by guessing the word"

  it "is over when you run out of guesses"

  it "displays correctly guessed letters on the board"

  it "is case insensitive"

  it "lets a player know how many misses they have left"
end
