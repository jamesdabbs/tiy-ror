require "minitest/autorun"

require "./guessing_game"


describe GuessingGame do
  it "isn't finished when it starts" do
    game = GuessingGame.new
    assert game.finished? == false
  end

  it "can be won by guessing the right number" do
    game = GuessingGame.new(7)
    game.guess(7)
    assert game.finished? == true
    assert_equal game.won?, true
  end

  it "tells you whether your guess was high or low" do
    game = GuessingGame.new(15)
    hint = game.guess(10)
    assert_equal hint, "Your guess is too low"
  end

  it "counts down the tries" do
    game = GuessingGame.new(21)
    assert_equal game.tries_left, 5
    game.guess(7)
    assert_equal game.tries_left, 4
  end

  it "is lost when you run out of guesses"
end
