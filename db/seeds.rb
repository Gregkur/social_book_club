# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "loading users"
  user1 = User.create!(first_name: 'Alan', last_name: 'Johnson', nickname: 'Prince Alan', email: 'alanj@gmail.com', address: 'Hamburg', password: '123456')
puts "created users"

puts "loading books"
  Book.create!(title: 'Pippi Goes on Board', author: 'Astrid Lindgren', genre: 'Childrens Book', description: "Outrageous Pippi Longstocking has no parents around and no rules to follow, so she lives according to her own daredevilish ways. She's been treating her friends Tommy and Annika to wild adventures, too--like buying and eating seventy-two pounds of candy, or sailing off to an island in the middle of a lake to see what it's like to be shipwrecked. But then Pippi's long lost father returns, and she might have to leave Villa Villekulla!", pages: 160, year: "2020", user_id: 1)
puts "created books"
