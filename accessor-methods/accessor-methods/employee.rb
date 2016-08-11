class Employee
  attr_accessor :name, :position
  attr_reader :id

  def initialize(name, position, id)
    @name     = name
    @position = position
    @id       = id
  end
end
