# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Faker::Address.latitude #=> "-58.17256227443719"
# Faker::Address.longitude #=> "-156.65548382095133"

5.times do
  p 'Seeding 5 random latitude and longitude...'
  test_museum = Museum.new(
    Longitude: Faker::Address.longitude,
    Latitude: Faker::Address.latitude
  )
  p "#{Museum.count}/5 - Seeded random longitude/latitude " if test_museum.save!
end
