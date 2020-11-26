require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creates user..."

User.create!(email: "marie@gmail.com", password: "123456", first_name: "Marie", last_name: "Wiedekamp", nickname: "marwie", address: "Berlin")
User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Maddisson", nickname: "annnie2", address: "Los Angeles")
User.create!(email: "george@gmail.com", password: "123456", first_name: "George", last_name: "Lukas", nickname: "lukkie55", address: "Tokyo")
User.create!(email: "cory@gmail.com", password: "123456", first_name: "Cory", last_name: "Thomson", nickname: "coryS", address: "Melbourne")
User.create!(email: "thomas@gmail.com", password: "123456", first_name: "Thomas", last_name: "Maddock", nickname: "Tommyboi", address: "Bogota")

puts "user created"

users = []
users = User.all

puts "loads books..."
10.times do
  Book.create!(title: Faker::Book.title, author: Faker::Book.author, pages: 225, year: 2015, genre: Faker::Book.genre, description: "Milk and Honey is a collection of poetry and prose by Rupi Kaur. The collection is about survival. It is divided into sections, with each section serving a different purpose and relevance to Kaur’s experience. The sections explore the themes of violence, abuse, love, loss, and femininity.", availability: true, user: users.sample)
end
puts "loaded books"

