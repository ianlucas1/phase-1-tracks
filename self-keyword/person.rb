class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def return_self
    return self
  end
end

bob = Person.new("Bob", "Stevens")
sam = Person.new("Sam", "Iam")
p sam.return_self
p bob.return_self
p sam.return_self
p sam
