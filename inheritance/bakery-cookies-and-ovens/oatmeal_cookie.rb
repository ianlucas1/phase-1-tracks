require_relative 'bakery'

class OatmealCookie < Bakery
  include Oven

  BATCH_SIZE = 15
  BAKING_TIME = 20
end
