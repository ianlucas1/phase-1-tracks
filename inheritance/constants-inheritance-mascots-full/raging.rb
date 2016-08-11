module Raging
  def rage
    @status = :raging
  end

  def reset
    @status = :normal
  end
end
