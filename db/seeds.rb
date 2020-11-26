require 'faker'
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

anna = URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1601352433l/15823480._SY475_.jpg")
milk = URI.open("https://images-na.ssl-images-amazon.com/images/I/71l9WWa-rXL.jpg")
testaments = URI.open("https://images-na.ssl-images-amazon.com/images/I/715YA-I9GcL.jpg")
prince = URI.open("https://images-na.ssl-images-amazon.com/images/I/61Zi2jjgfIL.jpg")
lord = URI.open("https://images-na.ssl-images-amazon.com/images/I/51EstVXM1UL._SX331_BO1,204,203,200_.jpg")
bird = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg")
patti = URI.open("https://images-na.ssl-images-amazon.com/images/I/51OQ3fuFNcL.jpg")
harry = URI.open("https://images-na.ssl-images-amazon.com/images/I/81YOuOGFCJL.jpg")


puts "Creating users..."

user1 = User.create(email: "marie@gmail.com", password: "123456", first_name: "Marie", last_name: "Wiedekamp", nickname: "marwie", address: "Berlin")

user1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "marie.jpg", content_type:"image/png" )

user2 = User.create(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Maddisson", nickname: "annnie2", address: "Los Angeles")

user2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1542596594-b47fea509622?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "anna.jpg", content_type:"image/png" )

user3 = User.create(email: "george@gmail.com", password: "123456", first_name: "George", last_name: "Lukas", nickname: "lukkie55", address: "Tokyo")

user3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1562124638-724e13052daf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"), filename: "george.jpg", content_type:"image/png" )

user4 = User.create(email: "cory@gmail.com", password: "123456", first_name: "Cory", last_name: "Thomson", nickname: "coryS", address: "Melbourne")

user4.photo.attach(io: URI.open("https://images.unsplash.com/flagged/photo-1597694042000-f0150210da38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"), filename: "cory.jpg", content_type:"image/png" )

user5 = User.create(email: "thomas@gmail.com", password: "123456", first_name: "Thomas", last_name: "Maddock", nickname: "Tommyboi", address: "Bogota")

user5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1492447166138-50c3889fccb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "thomas.jpg", content_type:"image/png" )

users = [user1,user2,user3,user4,user5]

puts "Users created!"

puts "Loading books..."

book1 = Book.create(title: "Anna Karenina", author:"Leo Tolstoy", pages: 864, year: 1878, genre: "Novel", description:"A complex novel in eight parts, with more than a dozen major characters, it is spread over more than 800 pages (depending on the translation and publisher), typically contained in two volumes. It deals with themes of betrayal, faith, family, marriage, Imperial Russian society, desire, and rural vs. city life. The plot centers on an extramarital affair between Anna and dashing cavalry officer Count Alexei Kirillovich Vronsky.", availability: true, user: user2)
book1.photos.attach(io: anna, filename: 'anna.jpg', content_type: 'image/jpg')

book2 = Book.create(title: "Milk and Honey", author:"Rupi Kaur", pages: 226, year: 2015, genre: "Poetry", description:"Milk and Honey is a collection of poetry and prose by Rupi Kaur. The collection is about survival. It is divided into sections, with each section serving a different purpose and relevance to Kaur’s experience. The sections explore the themes of violence, abuse, love, loss, and femininity.", availability: true, user: user2)
book2.photos.attach(io: milk, filename: 'milk.jpg', content_type: 'image/jpg')

book3 = Book.create(title: "The Testaments", author:"Margaret Atwood", pages: 442, year: 2019, genre: "Fiction", description:"When the van door slammed on Offred's future at the end of The Handmaid's Tale, readers had no way of telling what lay ahead for her--freedom, prison or death. With The Testaments, the wait is over.", availability: true, user: user4)
book3.photos.attach(io: testaments, filename: 'testaments.jpg', content_type: 'image/jpg')

book4 = Book.create(title: "The Little Prince", author:"Antoine de Saint-Exupéry", pages: 93, year: 2000, genre: "Novel", description:"The artwork in this edition has been restored to match in detail and in color Saint-Exupéry's original artwork. Combining Richard Howard's translation with restored original art, this definitive English-language edition of The Little Prince will capture the hearts of readers of all ages.", availability: true, user: user2)
book4.photos.attach(io: prince, filename: 'prince.jpg', content_type: 'image/jpg')

book5 = Book.create(title: "The Lord of the Rings", author:"J.R.R. Tolkien", pages: 1216, year: 2005, genre: "Fiction", description:"In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.", availability: true, user: user5)
book5.photos.attach(io: lord, filename: 'lord.jpg', content_type: 'image/jpg')

book6 = Book.create(title: "To Kill a Mockingbird", author:"Harper Lee", pages: 324, year: 2006, genre: "Fiction", description:"The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.", availability: true, user: user5)
book6.photos.attach(io: bird, filename: 'bird.jpg', content_type: 'image/jpg')

book7 = Book.create(title: "Just Kids", author:"Patti Smith", pages: 304, year: 2010, genre: "Autobiography", description:"In Just Kids, Patti Smith's first book of prose, the legendary American artist offers a never-before-seen glimpse of her remarkable relationship with photographer Robert Mapplethorpe in the epochal days of New York City and the Chelsea Hotel in the late sixties and seventies. An honest and moving story of youth and friendship.", availability: true, user: user2)
book7.photos.attach(io: patti, filename: 'kids.jpg', content_type: 'image/jpg')

book8 = Book.create(title: "Harry Potter and the Sorcerer's Stone", author:"J.K. Rowling", pages: 309, year: 2003, genre: "Fiction", description:"Harry Potter's life is miserable. His parents are dead and he's stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he's a wizard.", availability: true, user: user2)
book8.photos.attach(io: harry, filename: 'harry.jpg', content_type: 'image/jpg')

puts "Loaded books!"

books = []
books= Book.all

puts "Creating reviews..."

10.times do
  Review.create(book_rating: rand(1..5), book_comment: Faker::Hipster.paragraph(2), book: books.sample, user: user3)
end

puts "Reviews created!"

puts "Creating bookings..."


Booking.create(book: book1, from: "2020-11-30", until: "2021-11-30", user: user3 )
Booking.create(book: book2, from: "2020-11-30", until: "2021-01-44", user: user2 )
Booking.create(book: book3, from: "2020-11-30", until: "2021-02-11", user: user5 )
Booking.create(book: book4, from: "2020-11-30", until: "2021-03-20", user: user2 )
Booking.create(book: book5, from: "2020-11-30", until: "2021-05-01", user: user2 )

puts "Bookings created!"

puts "Creating Bookclubs..."

# Bookclubs
bookclub1 = Bookclub.create!(name: "Startups Berlin", description: "This bookclub is about the startups of Berlin.", user: user3)
bookclub2 = Bookclub.create!(name: "Harry Potter Stories", description: "This bookclub is made of big Harry Potter fans.", user: user4)
bookclub3 = Bookclub.create!(name: "Web Development and Ruby on Rails", description: "This bookclub summarizes all available documentations useful for Ruby on Rails based applications.", user: user5)

puts "Bookclubs created!"

puts "Creating Bookclub with different members..."

# Bookclub 1 with different members
BookclubUser.create!(bookclub: bookclub1, user: user2)
BookclubUser.create!(bookclub: bookclub1, user: user4)
BookclubUser.create!(bookclub: bookclub1, user: user5)
# BookclubUser.create!(bookclub: bookclub1, user: user1)

# Bookclub 2 with different members
# BookclubUser.create!(bookclub: bookclub2, user: user1)
BookclubUser.create!(bookclub: bookclub2, user: user2)
BookclubUser.create!(bookclub: bookclub2, user: user3)
BookclubUser.create!(bookclub: bookclub2, user: user5)

# Bookclub 3 with different members
# BookclubUser.create!(bookclub: bookclub3, user: user1)
BookclubUser.create!(bookclub: bookclub3, user: user2)
BookclubUser.create!(bookclub: bookclub3, user: user3)
BookclubUser.create!(bookclub: bookclub3, user: user4)

puts "Created Bookclubs with different members!"



## rails db:drop db:create db:migrate db:seed
