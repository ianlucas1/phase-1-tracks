class Company
 attr_accessor :company_name
 attr_reader :employees

  def initialize(name, employees = [])
    @company_name = name
    @employees    = employees
  end

  def add_employee(employee)
    @employees << employee
  end
end
