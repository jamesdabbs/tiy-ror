class GuessingGame
  # Make guess
  # - determines if we won
  # - respond with high / low
  # Keep track of number of guesses
  # - fail the game if we've run out
  def initialize
    @answer = (0..100).to_a.sample
    @tries_left = 5
    @won = false
  end

  def guess(number)
    @tries_left -= 1

    if number == @answer
      @won = true
    elsif number < @answer
      puts "Your guess is too low"
    else
      puts "Your guess is too high"
    end
  end

  def finished?
    # if @tries_left.zero?
    #   true
    # elsif @won
    #   true
    # else
    #   false
    # end
    @tries_left.zero? || @won
  end

  def won?
    @won
  end
end
