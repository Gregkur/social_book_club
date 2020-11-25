# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "loads books..."
10.times do
  Book.create(title: "Milk and Honey", author: "Rupi Kaur", pages: 225, year: 2015, genre: "Poetry", description: "Milk and Honey is a collection of poetry and prose by Rupi Kaur. The collection is about survival. It is divided into sections, with each section serving a different purpose and relevance to Kaur’s experience. The sections explore the themes of violence, abuse, love, loss, and femininity.", availability: true, user: User.first)
end
puts "loaded books"

puts "creates user..."
User.create(email: "marie@gmail.com", password: "123456", first_name: "Marie", last_name: "Wiedekamp", nickname: "marwie", address: "Berlin")
puts "user created"
