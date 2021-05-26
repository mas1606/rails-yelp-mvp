# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
fasano = { name: "Trattoria Fasano", address: "Rua Iguatemi, s/n", category: "italian" }
pizza =  { name: "Nonno Paolo", address: "Av. Abilio Soares, 830", category: "italian"}
china =  { name: "China in Box", address: "Av. Henrique Schaumman, 500", category: "chinese"}
frances =  { name: "Olimpe", address: "Lagoa Rodrigo de Freitas", category: "french"}
belga =  { name: "Chez Vouz", address: "Av Lavandisca", category: "belgian"}

[ fasano, pizza, china, frances, belga ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"