# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cuisine_list = ["Chinese", "Japanese", "Thai", "Italian", "Pub-Food", "Jewish", "Filipino"]
cuisine_list.each do |type|
  Cuisine.create(cuisine_type: type)
end

mark = User.create(name: 'Mark', username: 'mconlon', password: 'password', password_confirmation: 'password', email: 'mark@mail.com')

a = Restaurant.create(name: "Mark's Restaurant",
                      description: "What you'd expect",
                      owner_id: 1,
                      capacity: 10,
                      city: "Smiths Falls",
                      first_seating: 3,
                      last_seating: 20,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "123 Conlon Rd.",
                      cuisine_id: 5)

b = Restaurant.create(name: "Country Diner",
                      description: "Country Eats",
                      owner_id: 1,
                      capacity: 10,
                      city: "Smiths Falls",
                      first_seating: 12,
                      last_seating: 20,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "123 Main Street",
                      cuisine_id: 5)

lauren = User.create(name: 'Lauren', username: 'lauren', password: 'password', password_confirmation: 'password', email: 'lauren@mail.com')

c = Restaurant.create(name: "Goldman's",
                      description: "Always 10% off!",
                      owner_id: 2,
                      capacity: 20,
                      city: "Thornhill",
                      first_seating: 7,
                      last_seating: 20,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "456 Israel Drive",
                      cuisine_id: 6)

d = Restaurant.create(name: "Jacob's Kitchen",
                      description: "Open on Christmas",
                      owner_id: 2,
                      capacity: 20,
                      city: "Forest Hill",
                      first_seating: 16,
                      last_seating: 23,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "123 Telaviv Street",
                      cuisine_id: 6)

edwin= User.create(name: 'Edwin', username: 'edwin', password: 'password', password_confirmation: 'password', email: 'edwin@mail.com')

e = Restaurant.create(name: "House of Au",
                      description: "Always open.",
                      owner_id: 3,
                      capacity: 30,
                      city: "Markham",
                      first_seating: 0,
                      last_seating: 23,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "123 Hong Kong Street",
                      cuisine_id: 1)

f = Restaurant.create(name: "Manchu-Au",
                      description: "Not not fake Chinese.",
                      owner_id: 3,
                      capacity: 30,
                      city: "Markham",
                      first_seating: 0,
                      last_seating: 23,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "88 Edwin Street",
                      cuisine_id: 1)

margarita= User.create(name: 'Margarita', username: 'margarita', password: 'password', password_confirmation: 'password', email: 'margarita@mail.com')

g = Restaurant.create(name: "Kamayan",
                      description: "Only on banana leaves",
                      owner_id: 4,
                      capacity: 40,
                      city: "Mississauga",
                      first_seating: 12,
                      last_seating: 23,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "123 Margarita Street",
                      cuisine_id: 7)

g = Restaurant.create(name: "Margaritaville",
                      description: "Wasting away...",
                      owner_id: 4,
                      capacity: 40,
                      city: "Ajax",
                      first_seating: 0,
                      last_seating: 23,
                      phone_number: "1234567890", url_for_photo: "http://placebear.com/200/200",
                      address: "15 Margaritaville Ave.",
                      cuisine_id: 7)
