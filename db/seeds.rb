# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do

  beer = Beer.new(name: Faker::Beer.name, alcohol_content: Faker::Beer.alcohol, style: Faker::Beer.style, malt: Faker::Beer.malts, hop: Faker::Beer.hop)
  beer.save
end

200.times do
  name = Faker::StarWars.character
  address = Faker::Address.street_address
  address_2 = Faker::Address.state
  email = Faker::Internet.email
  beer_id = rand(0..100)

  Drinker.create(name: name, address: address, address_2: address_2, email: email, beer_id: beer_id)
end