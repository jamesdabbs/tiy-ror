require "minitest/autorun"
require "./hangman"

describe("The hangman game") do
  it "isn't finished when it starts" do
    game = Hangman.new("cat")
    assert_equal game.finished?, false
  end

  it "lets players make a guess" do
    game = Hangman.new("cat")
    assert_equal game.guess("e"), false
  end

  it "removes letters from available letters after a guess" do
    game = Hangman.new("banana")
    starting = game.available_letters
    game.guess(starting.first)
    assert_equal game.available_letters.count, starting.count - 1
  end

  it "lets a player know how many misses they have left" do
    game = Hangman.new("zebra")
    assert_equal game.misses_remaining, 6    
  end

  it "only lets you guess from available letters" do
    game = Hangman.new("quadcopter")
    game.guess("x")
    assert_equal game.misses_remaining, 5
    game.guess("x")
    assert_equal game.misses_remaining, 5
  end

  it "can by solved by guessing the word"

  it "is over when you run out of guesses"

  it "displays correctly guessed letters on the board"

  it "is case insensitive"
end
