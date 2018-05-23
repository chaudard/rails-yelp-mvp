# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'faker'


puts 'Cleaning database...'
Restaurant.destroy_all

# puts 'Creating restaurants...'
# restaurants_attributes = [
#   {
#     name:         'Tokyo lunch',
#     address:      '7 Boundary St, Tokyo E2 7JE',
#     phone_number: '+3265123456',
#     category:     'chinese'
#   },
#   {
#     name:         'Pizza East',
#     address:      '56A Shoreditch High St, Rome E1 6PQ',
#     phone_number: '+3998456789',
#     category:     'italian'
#   }
# ]
# Restaurant.create!(restaurants_attributes)

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Team.name,
    address: Faker::Address.street_address + ' ' + Faker::Address.zip_code + ' ' + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end

puts 'Finished!'
