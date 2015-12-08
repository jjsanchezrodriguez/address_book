# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
contact_list = [
  [ "John Lennon", "C. One bedroom, one bathroom", "555 758 789", "John_Lennon@gamil.com" ],
  [ "Ringo Starr", "C. de los pajaritos", "555 758 789", "Ringo_Starr@gamil.com" ],
  [ "George Harrison", "Av de los Andes", "555 758 789", "George_Harrison@gamil.com" ],
  [ "Paul McCartney", "Av de los pajaritos s/n", "555 758 789", "Paul_McCartney@gamil.com" ]
]

contact_list.each do |name, address, phone_number, email|
  Contact.create( name: name, address: address, phone_number: phone_number, email: email )
end
