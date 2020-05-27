# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database"

Flat.destroy_all

puts "DB is clean"

puts "Creating 5 flats"

5.times do
  Flat.create!(
    name: Faker::Address.street_address,
    address: Faker::Games::Zelda.location,
    description: Faker::Movies::Ghostbusters.quote,
    price_per_night: [50, 55, 60, 75, 90, 100, 105, 120, 132, 150].sample,
    number_of_guests: rand(1..5)
  )
end

puts "Done!"

