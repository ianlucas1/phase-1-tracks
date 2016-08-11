require_relative 'person_parser'

class Person
attr_reader :first_name, :last_name, :email, :phone, :created_at

  def initialize (args={})
    @first_name = args.fetch(:first_name, "")
    @last_name = args.fetch(:last_name, "")
    @email = args.fetch(:email, "")
    @phone = args.fetch(:phone, "")
    @created_at = args.fetch(:created_at, Time.now)

    # @created_at = created_at
  end

  def first_name
    @first_name
  end

  def email=(email)
    @email = email
  end

end

