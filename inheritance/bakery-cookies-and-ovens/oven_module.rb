module Oven
  attr_reader :status

  def doughy
    @status = :doughy
  end

  def almost_ready
    @status = :almost_ready
  end

  def ready
    @status = :ready
  end

  def burned
    @status = :burned
  end

end
