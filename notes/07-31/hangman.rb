class Hangman
  def initialize answer
    @answer = answer
    @misses_remaining = 6
    @guessed = []
  end

  def board
    # Take @answer and only show letters that the player has guessed
    result = ""
    @answer.split("").each do |char|
      if @guessed.include?(char)
        result += char
      else
        result += "_"
      end
    end
    result
  end

  def finished?
    won? || lost?
  end

  def won?
    !board.include?("_")
  end

  def lost?
    @misses_remaining.zero?
  end
end
