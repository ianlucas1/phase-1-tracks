require_relative 'bakery'

class ChocolateCookie < Bakery
  include Oven

  BATCH_SIZE = 13
  BAKING_TIME = 15
end
