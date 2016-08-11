module Levitation
  def levitate
    @status = :levitating
  end

  def reset
    @status = :normal
  end
end
