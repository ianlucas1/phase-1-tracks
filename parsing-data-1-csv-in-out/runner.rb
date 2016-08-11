require_relative 'person'
require_relative 'person_parser'

# Parse the data in the csv file into ruby objects
parser = PersonParser.new('people.csv')
people = parser.people

# Get people with phone numbers in a certain area code
# puts "The following people have phone numbers from area code 419."

# people_with_area_code_419 = people.select { |person| /\A1-419/.match person.phone }
# people_with_area_code_419.each { |person| puts "#{person.first_name} #{person.last_name}" }

puts "The following people have last names starting with A to L:"
people_with_last_name_AtoL = people.select { |person| /\A[A-L]/.match person.last_name }

puts "The following people have last names starting with A to L, and are sorted alphabetically:"
people_with_last_name_AtoL.sort_by! { |person| person.last_name }

people_with_last_name_AtoL.each { |person| puts "#{person.last_name}, #{person.first_name}" }

CSV.open("a_to_l.csv", "w") do |csv|
  csv << [:last_name, :first_name]
  people_with_last_name_AtoL.each do |person|
    csv << [person.last_name, person.first_name]
  end
end


# Release 5

person_counter = 1
address_book_array = []

loop do
  puts "Do you want to input a person for the address book (y/n)?"
  intent = gets.chomp
  break if intent == "n"

  person = {}

  puts "Please enter first name"
  person[:first_name] = gets.chomp

  puts "Please enter last name"
  person[:last_name] = gets.chomp

  puts "Please enter phone number"
  person[:phone] = gets.chomp
  # p person

  person[person_counter] = Person.new(person)

  address_book_array << person[person_counter]
  p address_book_array

  person_counter += 1
end

  CSV.open("address_book.csv", "w") do |csv|
  csv << [:last_name, :first_name, :phone]
  address_book_array.each do |person|
    csv << [person.last_name, person.first_name, person.phone]
  end
end
