require_relative 'bakery'

class SugarCookie < Bakery
  include Oven

  BATCH_SIZE = 12
  BAKING_TIME = 10
end
