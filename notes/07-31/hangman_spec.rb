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

  it "can by solved by guessing the word" do
    game = Hangman.new("up")
    game.guess("u")
    game.guess("p")
    assert_equal game.finished?, true
    assert_equal game.won?, true
  end

  it "is over after 6 bad guesses" do
    game = Hangman.new("up")
    ('a'..'f').each { |letter| game.guess(letter) }
    assert_equal game.finished?, true
    assert_equal game.lost?, true
  end

  it "displays correctly guessed letters on the board" do
    game = Hangman.new("banana")
    game.guess("a")
    assert_equal "_a_a_a", game.board
  end

  it "is case insensitive" do
    game = Hangman.new("bAnAna")
    game.guess("A")
    assert_equal "_a_a_a", game.board
  end
end
