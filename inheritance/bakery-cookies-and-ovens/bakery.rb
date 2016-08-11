require_relative 'oven_module'

class Bakery

  def initialize(args = {})
    @status = args.fetch(:status) { :doughy }
  end

  def batch_size
    self.class::BATCH_SIZE
  end

  def baking_time
    self.class::BAKING_TIME
  end
end
