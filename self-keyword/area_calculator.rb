module AreaCalculator
  # Add behaviors to the module here
  # within the module definition

  def self.area_of_rectangle(x, y)
    x * y
  end

  def self.area_of_square(side)
    side * side
  end

  def self.area_of_triangle(base, height)
    (base * height).to_f / 2.0
  end
end
