require_relative "orange"

class OrangeTree

  attr_accessor :age, :height, :produced_oranges, :oranges_in_basket

  # Define a custom exception class
  class NoOrangesError < StandardError
  end

  def initialize
    @age = 0
    @height = 0
    # @num_of_oranges = 0
    @orange_instances = []
    @produced_oranges = 0
    @oranges_in_basket = 0
    @picked_diameters = []
  end

  def pass_growing_season
    @age += 1
    if @height < 25
      @height += 2.5
      if @height > 25
       @height = 25
      end
    end
    @age

    if @age >= 6

      @produced_oranges = rand(100..300)
    end
    # @num_of_oranges = 0
  end

  # Returns true if the tree is old enough to bear fruit (6), false otherwise
  def mature?
    return true if @age >= 6
    false
  end

  def dead?
    return true if @age >= 100
    false
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def has_oranges?
    return true if @produced_oranges > 0
    false
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange
    raise NoOrangesError, "This tree has no oranges" unless self.has_oranges?
    @produced_oranges -= 1
    @oranges_in_basket += 1
    orange = Orange.new
  end
end
