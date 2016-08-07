class GuessingGame
  VALID_NUMBERS = (1..100).to_a

  def initialize(answer)
    @answer = answer
    @solved = false
    # Validate input
    raise "Answer must be between 1 and 100" unless VALID_NUMBERS.include? @answer
  end

  def guess(number)
    # Check if the two are equal
    if number == @answer
      @solved = true
        :correct
    # Check if the guess is higher
    elsif number > @answer
      @solved = false
        :high
    # Check if the guess is lower
    elsif number < @answer
      @solved = false
        :low
    end
  end

  def solved?
    @solved
  end

end
