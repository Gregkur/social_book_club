require 'faker'
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# delete everything
Review.delete_all
Booking.delete_all
Bookclub.delete_all
Book.delete_all
User.delete_all
BookclubUser.delete_all
#Thread.delete_all

#book-covers
anna = URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1601352433l/15823480._SY475_.jpg")
milk = URI.open("https://images-na.ssl-images-amazon.com/images/I/71l9WWa-rXL.jpg")
testaments = URI.open("https://images-na.ssl-images-amazon.com/images/I/715YA-I9GcL.jpg")
prince = URI.open("https://images-na.ssl-images-amazon.com/images/I/61Zi2jjgfIL.jpg")
lord = URI.open("https://images-na.ssl-images-amazon.com/images/I/51EstVXM1UL._SX331_BO1,204,203,200_.jpg")
bird = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg")
patti = URI.open("https://images-na.ssl-images-amazon.com/images/I/51OQ3fuFNcL.jpg")
harry = URI.open("https://images-na.ssl-images-amazon.com/images/I/81YOuOGFCJL.jpg")
leaves = URI.open("https://images-na.ssl-images-amazon.com/images/I/71ZUAQQ-9IL.jpg")
start = URI.open("https://images-na.ssl-images-amazon.com/images/I/81-QB7nDh4L.jpg")
girl = URI.open("https://images-na.ssl-images-amazon.com/images/I/8183Y1myPvL.jpg")


#about-sections
about1 = "I'm an absolute art lover and always on the hunt for good reads."
about2 = "I'm an economics student from Berlin who loves to read thrillers and crime stories. Looking for some inspiration."
about3 = "I looooove to read since I'm a little child and I cannot imagine many better things that discovering new books. I'm alsways open for recommendations and discussions."
about4 = "I just recently realized how calming and cozy it can be to get cozy with a good read and a cup of tea in a quite place. But since I'm a newbiw I would love to get some guidance in choosing my next book."
about5 = "As a politics student from Berlin, I enjoy deeper conversation, long walks outside of the city and books on philosophy."
about6 = "As a mother I am here to find inspiration for new books that I can read to my two daughters. Besides that I'm on the hunt for a cookbook."
about7 = "During the day I am working in real estate, but in the evening I enjoy hitting the gym or reading good history books."
about8 = "As a chef I have super busy evenings and the only thing that really slows me down after a long shift is a good book. So maybe I find some inspiration on here."
about9 = "I'm a yoga teacher and I love to deepen my knowledge on spirituality and mindfulness and all things regarding health and the inner beauty."
about10 = "I am husband, a father, a grandfather and a retired journalist with loads of spare time that I love to fill with good reads."
about11 = "I have just moved to Berlin and would love to find some like-minded people that I can discuss books with and share "
about12 = "Due to my lifestyle as a consultant, I'm travelling a lot and I love to read on the train or the plane. Maybe you have some good recommendations. Feel free to browse through the books I'm offering."
about13 = "I just recently realized how calming and cozy it can be to get cozy with a good read and a cup of tea in a quite place. But since I'm a newbiw I would love to get some guidance in choosing my next book."
about14 = "As a chef I have super busy evenings and the only thing that really slows me down after a long shift is a good book. So maybe I find some inspiration on here."
about15 = "Due to my lifestyle as a consultant, I'm travelling a lot and I love to read on the train or the plane. Maybe you have some good recommendations. Feel free to browse through the books I'm offering."
about16 = "I'm a scientist from Berlin who loves to read thrillers and crime stories."
about17 = "I'm a yoga teacher and I love to deepen my knowledge on spirituality and mindfulness and all things regarding health and the inner beauty."

puts "Creating users..."

user1 = User.create(email: "marie@gmail.com", password: "123456", first_name: "Marie", last_name: "Wiedekamp", nickname: "Marwie", address: "Berlin, Pankow", about: about1)

user1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "marie.jpg", content_type:"image/png" )

user2 = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Maddisson", nickname: "Annnie2", address: "Samariterstrasse 10, Berlin", about: about2)

user2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1542596594-b47fea509622?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "anna.jpg", content_type:"image/png" )

user3 = User.create(email: "george@gmail.com", password: "123456", first_name: "George", last_name: "Lukas", nickname: "lukkie55", address: "Berlin, Prenzlauer Berg", about: about3)

user3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1562124638-724e13052daf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"), filename: "george.jpg", content_type:"image/png" )

user4 = User.create(email: "cory@gmail.com", password: "123456", first_name: "Cory", last_name: "Thomson", nickname: "coryS", address: "Berlin, Kreuzberg", about: about4)

user4.photo.attach(io: URI.open("https://images.unsplash.com/flagged/photo-1597694042000-f0150210da38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"), filename: "cory.jpg", content_type:"image/png" )

user5 = User.create(email: "thomas@gmail.com", password: "123456", first_name: "Thomas", last_name: "Maddock", nickname: "Tommyboi", address: "Berlin, Mitte", about: about5)

user5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1492447166138-50c3889fccb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "thomas.jpg", content_type:"image/png" )

user6 = User.create(email: "claudia@gmail.com", password: "123456", first_name: "Claudia", last_name: "Hoffmann", nickname: "ClaUdii", address: "Berlin, Friedrichshain", about: about6)

user6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1477420226391-9ff4fb9085fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"), filename: "claudia.jpg", content_type:"image/png" )

#new
user7 = User.create(email: "lara@gmail.com", password: "123456", first_name: "Lara", last_name: "König", nickname: "Lari", address: "Eckertstraße 6, Berlin", about: about7)

user7.photo.attach(io: URI.open("https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2500&q=80"), filename: "lara.jpg", content_type:"image/png" )

user8 = User.create!(email: "lea@gmail.com", password: "123456", first_name: "Lea", last_name: "Merz", nickname: "Lee", address: "Boxhagener Str.74, Berlin", about: about8)

user8.photo.attach(io: URI.open("https://images.unsplash.com/photo-1504933350103-e840ede978d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80"), filename: "lea.jpg", content_type:"image/png" )

user9 = User.create(email: "alex@gmail.com", password: "123456", first_name: "Alex", last_name: "Müller", nickname: "alex89", address: "Warschauer Str. 69, Berlin", about: about9)

user9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1492288991661-058aa541ff43?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: "alex.jpg", content_type:"image/png" )

user10 = User.create(email: "max@gmail.com", password: "123456", first_name: "Max", last_name: "Ernst", nickname: "Maxe", address: "Friedrichstraße 215, Berlin", about: about10)

user10.photo.attach(io: URI.open("https://images.unsplash.com/photo-1492447273231-0f8fecec1e3a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: "max.jpg", content_type:"image/png" )

user11 = User.create(email: "greta@gmail.com", password: "123456", first_name: "Greta", last_name: "Schulz", nickname: "Gretchen", address: "Adalbertstraße 9, Berlin", about: about11)

user11.photo.attach(io: URI.open("https://images.unsplash.com/photo-1476817343404-01ccd61218d3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: "greta.jpg", content_type:"image/png" )

user12 = User.create(email: "juliana@gmail.com", password: "123456", first_name: "Juliana", last_name: "Werner", nickname: "Juli", address: "Wrangelstraße 95, Berlin", about: about12)

user12.photo.attach(io: URI.open("https://images.unsplash.com/photo-1502767882403-636aee14f873?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: "juliana.jpg", content_type:"image/png" )

user13 = User.create(email: "pia@gmail.com", password: "123456", first_name: "Pia", last_name: "von Heyer", nickname: "Pipi", address: "Auguststraße 58, Berlin", about: about2)

user13.photo.attach(io: URI.open("https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/11825717_944761278918652_7671842961036378865_n.jpg?_nc_cat=102&ccb=2&_nc_sid=174925&_nc_ohc=U2-F3DTkDLwAX_7-cKZ&_nc_ht=scontent-frt3-1.xx&oh=85545210b05aaeb5cc10532f28514527&oe=5FEED1BB"), filename: "greg.jpg", content_type:"image/png" )

user14 = User.create(email: "maxi@gmail.com", password: "123456", first_name: "Max", last_name: "Weber", nickname: "Webbi", address: "Gipsstrasse 10, Berlin", about:about14 )

user14.photo.attach(io: URI.open("https://images.unsplash.com/photo-1584316712724-f5d4b188fee2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"), filename: "juliana.jpg", content_type:"image/png" )

user15 = User.create(email: "anne@gmail.com", password: "123456", first_name: "Anne", last_name: "Echt", nickname: "EchtMan", address: "Auguststraße 11, Berlin", about:about15 )

user15.photo.attach(io: URI.open("https://images.unsplash.com/photo-1480914362564-9f2c2634e266?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"), filename: "juliana.jpg", content_type:"image/png" )

user16 = User.create(email: "luk@gmail.com", password: "123456", first_name: "Lukas", last_name: "Fabbo", nickname: "Farri", address: "Chausseestraße 26", about:about16 )

user16.photo.attach(io: URI.open("https://images.unsplash.com/photo-1543060829-a0029874b174?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"), filename: "juliana.jpg", content_type:"image/png" )

user17 = User.create(email: "helena@gmail.com", password: "123456", first_name: "Helena", last_name: "Wish", nickname: "WishXo", address: "Hasenheide 10, Berlin", about:about17 )

user17.photo.attach(io: URI.open("https://images.unsplash.com/photo-1506880135364-e28660dc35fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"), filename: "juliana.jpg", content_type:"image/png" )
users = [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10,user11,user12, user13, user14, user15, user16, user17]

puts "Users created!"

puts "Loading books..."

book1 = Book.create(title: "Anna Karenina", author:"Leo Tolstoy", pages: 864, year: 1878, genre: "Novel", description:"A complex novel in eight parts, with more than a dozen major characters, it is spread over more than 800 pages (depending on the translation and publisher), typically contained in two volumes. It deals with themes of betrayal, faith, family, marriage, Imperial Russian society, desire, and rural vs. city life. The plot centers on an extramarital affair between Anna and dashing cavalry officer Count Alexei Kirillovich Vronsky.", availability: false, user: user2)
book1.photos.attach(io: anna, filename: 'anna.jpg', content_type: 'image/jpg')

book2 = Book.create(title: "Milk and Honey", author:"Rupi Kaur", pages: 226, year: 2015, genre: "Poetry", description:"Milk and Honey is a collection of poetry and prose by Rupi Kaur. The collection is about survival. It is divided into sections, with each section serving a different purpose and relevance to Kaur’s experience. The sections explore the themes of violence, abuse, love, loss, and femininity.", availability: false, user: user2)
book2.photos.attach(io: milk, filename: 'milk.jpg', content_type: 'image/jpg')

book3 = Book.create(title: "The Testaments", author:"Margaret Atwood", pages: 442, year: 2019, genre: "Fiction", description:"When the van door slammed on Offred's future at the end of The Handmaid's Tale, readers had no way of telling what lay ahead for her--freedom, prison or death. With The Testaments, the wait is over.", availability: false, user: user4)
book3.photos.attach(io: testaments, filename: 'testaments.jpg', content_type: 'image/jpg')

book4 = Book.create(title: "The Little Prince", author:"Antoine de Saint-Exupéry", pages: 93, year: 2000, genre: "Novel", description:"The artwork in this edition has been restored to match in detail and in color Saint-Exupéry's original artwork. Combining Richard Howard's translation with restored original art, this definitive English-language edition of The Little Prince will capture the hearts of readers of all ages.", availability: false, user: user2)
book4.photos.attach(io: prince, filename: 'prince.jpg', content_type: 'image/jpg')

book5 = Book.create(title: "The Lord of the Rings", author:"J.R.R. Tolkien", pages: 1216, year: 2005, genre: "Fiction", description:"In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.", availability: false, user: user5)
book5.photos.attach(io: lord, filename: 'lord.jpg', content_type: 'image/jpg')

book6 = Book.create(title: "To Kill a Mockingbird", author:"Harper Lee", pages: 324, year: 2006, genre: "Fiction", description:"The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.", availability: true, user: user10)
book6.photos.attach(io: bird, filename: 'bird.jpg', content_type: 'image/jpg')

book7 = Book.create(title: "Just Kids", author:"Patti Smith", pages: 304, year: 2010, genre: "Autobiography", description:"In Just Kids, Patti Smith's first book of prose, the legendary American artist offers a never-before-seen glimpse of her remarkable relationship with photographer Robert Mapplethorpe in the epochal days of New York City and the Chelsea Hotel in the late sixties and seventies. An honest and moving story of youth and friendship.", availability: true, user: user2)
book7.photos.attach(io: patti, filename: 'kids.jpg', content_type: 'image/jpg')

book8 = Book.create(title: "Harry Potter and the Sorcerer's Stone", author:"J.K. Rowling", pages: 309, year: 2003, genre: "Fiction", description:"Harry Potter's life is miserable. His parents are dead and he's stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he's a wizard.", availability: true, user: user2)
book8.photos.attach(io: harry, filename: 'harry.jpg', content_type: 'image/jpg')

# book9 = Book.create(title: "Leaves of Grass", author:"Walt Whitman", pages: 230, year: 1855, genre: "Poetry", description:"Leaves of Grass (1855) is a poetry collection by the American poet Walt Whitman. Among the poems in the collection are 'Song of Myself', 'I Sing the Body Electric'.", availability: true, user: user6)
# book9.photos.attach(io: harry, filename: 'harry.jpg', content_type: 'image/jpg')

book10 = Book.create(title: "The Lean Startup", author:"Eric Ries", pages: 309, year: 2011, genre: "Guide", description:"Most startups fail. But many of those failures are preventable. The Lean Startup is a new approach being adopted across the globe, changing the way companies are built and new products are launched.", availability: false, user: user6)
book10.photos.attach(io: start, filename: 'start.jpg', content_type: 'image/jpg')

book11 = Book.create(title: "The Girl on the Train", author:"Paula Hawkins", pages: 222, year: 2015, genre: "Thriller", description:"Rachel takes the same commuter train every morning and night. Every day she rattles down the track, flashes past a stretch of cozy suburban homes, and stops at the signal that allows her to daily watch the same couple breakfasting on their deck. She s even started to feel like she knows them. Jess and Jason, she calls them. Their life as she sees it is perfect. Not unlike the life she recently lost. UNTIL TODAY. And then she sees something shocking. It s only a minute until the train moves on, but it s enough. Now everything s changed.", availability: true, user: user6)
book11.photos.attach(io: girl, filename: 'girl.jpg', content_type: 'image/jpg')

#new
book12 = Book.create(title: "A Promised Land", author:"Barack Obama", pages: 868, year: 2020, genre: "Biography", description:"In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.", availability: true, user: user7)
book12.photos.attach(io: URI.open("https://d188rgcu4zozwl.cloudfront.net/content/B08JCRFJ4Z/resources/1945634139"), filename: 'obama.jpg', content_type: 'image/jpg')

book13 = Book.create(title: "Greenlights", author:"Matthew McConaughey", pages: 304, year: 2020, genre: "Autobiography", description:"From the Academy Award–winning actor, an unconventional memoir filled with raucous stories, outlaw wisdom, and lessons learned the hard way about living with greater satisfaction", availability: true, user: user8)
book13.photos.attach(io: URI.open("https://assets.thalia.media/img/artikel/3ac5749ba15f9568cac1054a612b333e821fc9f1-00-00.jpeg"), filename: 'conaughey.jpg', content_type: 'image/jpg')

book14 = Book.create(title: "And Then There Were None", author:"Agatha Christie", pages: 342, year: 2019, genre: "Thriller", description:"irst, there were ten—a curious assortment of strangers summoned as weekend guests to a little private island off the coast of Devon. Their host, an eccentric millionaire unknown to all of them, is nowhere to be found. All that the guests have in common is a wicked past they're unwilling to reveal—and a secret that will seal their fate.", availability: false, user: user13)
book14.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1391120695l/16299.jpg"), filename: 'none.jpg', content_type: 'image/jpg')

book15 = Book.create(title: "The Da Vinci Code", author:"Dan Brown", pages: 412, year: 2003, genre: "Fiction", description:"While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.", availability: true, user: user13)
book15.photos.attach(io: URI.open("https://www.babcockbooks.com/pictures/26675.jpg?v=1545291244"), filename: 'davinci.jpg', content_type: 'image/jpg')

book16 = Book.create(title: "The Alchemist", author:"Paulo Coelho", pages: 276, year: 1988, genre: "Classics", description:"Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different, and far more satisfying, listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams.", availability: true, user: user11)
book16.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1483412266l/865.jpg"), filename: 'alchemist.jpg', content_type: 'image/jpg')

book17 = Book.create(title: "The Girl with the Dragon Tattoo", author:"Stieg Larsson", pages: 465, year: 2008, genre: "Crime", description:"Harriet Vanger, a scion of one of Sweden’s wealthiest families disappeared over forty years ago. All these years later, her aged uncle continues to seek the truth. He hires Mikael Blomkvist, a crusading journalist recently trapped by a libel conviction, to investigate. He is aided by the pierced and tattooed punk prodigy Lisbeth Salander. Together they tap into a vein of unfathomable iniquity and astonishing corruption.", availability: true, user: user13)
book17.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1327868566l/2429135.jpg"), filename: 'tattoo.jpg', content_type: 'image/jpg')

book18 = Book.create(title: "The Exorcist", author:"William Peter Blatty", pages: 308, year: 1994, genre: "Thriller", description:"Chris MacNeil is an actress who recently moved to Washington with her 12 year old daughter Regan to shoot a film with her friend Burke Dennings as the director. All goes well and she even gets an offer to direct a film herself, till something strange is happening to Regan. She acts out of character, Chris hears knocking on the walls, furniture is moved seemingly by itself so she takes Regan to a doctor. It’s her only hope to perform an exorcism to drive out the real or metaphorical demons out of Regan, but Karras is losing his faith and doubts if Regan is really possessed.", availability: true, user: user9)
book18.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1375168676l/179780.jpg"), filename: 'exorcist.jpg', content_type: 'image/jpg')

book19 = Book.create(title: "1984", author:"George Orwell", pages: 329, year: 1950, genre: "Science Fiction", description:"The year 1984 has come and gone, but George Orwell's prophetic, nightmarish vision in 1949 of the world we were becoming is timelier than ever. 1984 is still the great modern classic of negative utopia—a startlingly original and haunting novel that creates an imaginary world that is completely convincing, from the first sentence to the last four words. No one can deny the novel's hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time.", availability: true, user: user12)
book19.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348990566l/5470.jpg"), filename: '1984.jpg', content_type: 'image/jpg')

book20 = Book.create(title: "Perfume: The Story of a Murderer", author:"Patrick Süskind", pages: 263, year: 1987, genre: "Novel", description:"In the slums of eighteenth-century France, the infant Jean-Baptiste Grenouille is born with one sublime gift—an absolute sense of smell. As a boy, he lives to decipher the odors of Paris, and apprentices himself to a prominent perfumer who teaches him the ancient art of mixing precious oils and herbs. But Grenouille's genius is such that he is not satisfied to stop there, and he becomes obsessed with capturing the smells of objects such as brass doorknobs and fresh-cut wood. Then one day he catches a hint of a scent that will drive him on an ever-more-terrifying quest to create the ultimate perfume—the scent of a beautiful young virgin.", availability: true, user: user14)
book20.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1409112276l/343.jpg"), filename: 'parfum.jpg', content_type: 'image/jpg')

book21 = Book.create(title: "The Plague", author:"Albert Camus", pages: 381, year: 1991, genre: "Novel", description:"A gripping tale of human unrelieved horror, of survival and resilience, and of the ways in which humankind confronts death, The Plague is at once a masterfully crafted novel, eloquently understated and epic in scope, and a parable of ageless moral resonance, profoundly relevant to our times. In Oran, a coastal town in North Africa, the plague begins as a series of portents, unheeded by the people. It gradually becomes an omnipresent reality, obliterating all traces of the past and driving its victims to almost unearthly extremes of suffering, madness, and compassion.", availability: true, user: user9)
book21.photos.attach(io: URI.open("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1503362434l/11989._SY475_.jpg"), filename: 'start.jpg', content_type: 'image/jpg')

book22 = Book.create(title: "The Secret", author:"Rhonda Byrne", pages: 199, year: 2006, genre: "Novel", description:"The Secret contains wisdom from modern-day teachers—men and women who have used it to achieve health, wealth, and happiness. By applying the knowledge of The Secret, they bring to light compelling stories of eradicating disease, acquiring massive wealth, overcoming obstacles, and achieving what many would regard as impossible.", availability: true, user: user12)
book22.photos.attach(io: URI.open("https://images-na.ssl-images-amazon.com/images/I/51cLaECLmOL._SX344_BO1,204,203,200_.jpg"), filename: 'secret.jpg', content_type: 'image/jpg')

book23 = Book.create(title: "The Couple Next Door", author:"Shari Lapena", pages: 400, year: 2018, genre: "Thriller", description:"A domestic suspense debut about a young couple and their apparently friendly neighbors--a twisty, rollercoaster ride of lies, betrayal, and the secrets between husbands and wives.", availability: true, user: user17)
book23.photos.attach(io: URI.open("https://media1.popsugar-assets.com/files/thumbor/0xr3qafQApWmHM7J43QnW6e5p_c/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2019/02/08/965/n/44701584/8e20afe55c5dfe2b107257.85617651_/i/Best-Thriller-Books-All-Time.jpg"), filename: 'exorcist.jpg', content_type: 'image/jpg')

book24 = Book.create(title: "Presumed Innocent", author:"Scott Turrow", pages: 877, year: 1984, genre: "Thriller", description:"Hailed as the most suspenseful and compelling novel in decades. Presumed Innocent brings to life our worst nightmare: that of an ordinary citizen facing conviction for the most terrible of all crimes. It's the stunning portrayal of one man's all-too-human, all-consuming fatal attraction for a passionate woman who is not his wife.", availability: false, user: user16)
book24.photos.attach(io: URI.open("https://i.unisquare.com/img/main/1/1/10/154618987676e9a0da666db1n.jpg"), content_type: 'image/jpg', filename: 'exorcist.jpg')

book25 = Book.create(title: "Impostor", author:"L.J.Ross", pages: 308, year: 2019, genre: "Thriller", description:"After an elite criminal profiling unit is shut down amidst a storm of scandal and mismanagement, only one person emerges unscathed. Forensic psychologist Doctor Alexander Gregory has a reputation for being able to step inside the darkest minds to uncover whatever secrets lie hidden there and, soon enough, he finds himself drawn into the murky world of murder investigation.", availability: true, user: user15)
book25.photos.attach(io: URI.open("https://www.ljrossauthor.com/wp-content/uploads/2019/03/Ross_Impostor_Ebook-538x800.jpg"), filename: 'exorcist.jpg', content_type: 'image/jpg')

book26 = Book.create(title: "Angels and Demons", author:"Dan Brown", pages: 308, year: 2000, genre: "Thriller", description:"Robert Langdon pairs with Italian scientist Vittoria Vetra to assist the Vatican in locating a time bomb that the Illuminati has planted right at the heart of the Vatican City. This is announced by the Illuminati on the eve of a holy conclave to select a new Pope in place of the earlier Pope who has recently passed away.", availability: true, user: user14)
book26.photos.attach(io: URI.open("https://images-na.ssl-images-amazon.com/images/I/81S+VsvKTlL.jpg"), filename: 'exorcist.jpg', content_type: 'image/jpg')
puts "Loaded books!"

books = []
books= Book.all

puts "Creating reviews..."

# 10.times do
#   Review.create(book_rating: rand(1..5), book_comment: Faker::Hipster.paragraph(2), book: books.sample, user: user3)
# end

obama_review1 = Review.create(book_rating: 5, book_comment: "Barack Obama is as fine a writer as they come. A Promised Land is nearly always pleasurable to read, sentence by sentence, the prose gorgeous in places, the detail granular and vivid. . . . The story will continue in the second volume, but Barack Obama has already illuminated a pivotal moment in American history, and how America changed while also remaining unchanged.", book: book12, user: user8)

conaughey_review1 = Review.create(book_rating: 4, book_comment: "A delightful surprise, full of stories that [haven’t] been shared on late night talk shows or made headlines over the years. It’s a wild ride to be sure, but if you enjoy McConaughey and all of the eccentricities and contradictions that come with him, it’s one you won’t want to miss.", book: book13, user: user9)

Review.create(book_rating: 5, book_comment: "This is the perfect weekend read. I settled into the story and spent most of Sunday (a dark and stormy afternoon) reading away.", book: book18, user: user10)

Review.create(book_rating: 4, book_comment: "In all honesty, i only read this because i felt like i could not stop seeing this everywhere. so. many. people. were reading this. on the tube, in the park, at the bookshop. i couldnt escape seeing this book. But at the end it was worth it! ", book: book18, user: user12)

Review.create(book_rating: 5, book_comment: "Woah. This is one unsettling little thriller and the best bit about it is that no one can be trusted, including the three female narrators who share the storytelling of this book. I literally read this entire novel in one sitting and I now need to find the words to convince you to go get your hands on it. RIGHT NOW.", book: book11, user: user11)

Review.create(book_rating: 4, book_comment: "Everyone in this book is absolutely terrible, and as a result, this book is a masterpiece in character study and development. It's also a well-written, precisely plotted psychological thriller, and deftly sketches one unreliable narrator after another.", book: book11, user: user7)
 #Review.create(book_rating: 5, book_comment: "", book: book12, user: user8)


puts "Reviews created!"

puts "Creating bookings..."


Booking.create(book: book1, from: "2020-11-30", until: "2020-12-30", user: user3 )
Booking.create(book: book2, from: "2020-11-30", until: "2020-12-06", user: user7 )
Booking.create(book: book3, from: "2020-11-30", until: "2020-12-24", user: user5 )
Booking.create(book: book4, from: "2020-11-30", until: "2021-01-20", user: user2 )


#new
Booking.create(book: book10, from: "2020-11-20", until: "2021-12-04", user: user13 )

Booking.create(book: book24, from: "2020-11-30", until: "2021-02-30", user: user10 )
Booking.create(book: book5, from: "2020-11-20", until: "2021-02-04", user: user10 )
Booking.create(book: book14, from: "2020-11-30", until: "2021-02-30", user: user10 )
puts "Bookings created!"

puts "Creating Bookclubs..."

# B ookclubs
bookclub1 = Bookclub.create!(name: "Startups Berlin", description: "This bookclub is about the startups of Berlin.", user: user3)
bookclub2 = Bookclub.create!(name: "Harry Potter Stories", description: "This bookclub is made of big Harry Potter fans.", user: user4)
bookclub3 = Bookclub.create!(name: "Web Development and Ruby on Rails", description: "This bookclub summarizes all available documentations useful for Ruby on Rails based applications.", user: user5)
#new
bookclub4 = Bookclub.create!(name: "Comics fans", description: "Bookclub for comics fans! Nerds unite!", user: user10)
bookclub5 = Bookclub.create!(name: "It's Thriller Time", description: "Let's exchange experiences about good thrillers", user: user13)
bookclub6 = Bookclub.create!(name: "Best Reading Spots in Berlin", description: "What are your favourite reading spots in this lovely city?", user: user9)
bookclub7 = Bookclub.create!(name: "All Time Favourites", description: "Which classics are your favourites?", user: user12)
bookclub8 = Bookclub.create!(name: "Books about Mindfulness", description: "Let's share good reads about mindfulness, slowing down and finding stillness!", user: user9)
bookclub9 = Bookclub.create!(name: "Children's Books", description: "Which books are you reading to your kids? What are your favourite children's books authors?", user: user6)
bookclub10 = Bookclub.create!(name: "Good reads on planes", description: "Which books would you recommend for a long plane flight?", user: user12)
bookclub11 = Bookclub.create!(name: "Books for summer holiday", description: "Let's talk about books you love reading on the beach!", user: user10)
bookclub12 = Bookclub.create!(name: "Scariest books ever", description: "Let's talk about thrillers and crime stories. Which ones have caused you goose bumps?", user: user3)
bookclub13 = Bookclub.create!(name: "Berlin Poetry", description: "Which Berlin poets can you recommend?", user: user5)
bookclub14 = Bookclub.create!(name: "Captivating Biographies", description: "Good biographies can be hard to find, what are your recommendations?", user: user8)
bookclub15 = Bookclub.create!(name: "Love Stories", description: "Who doesn't enjoy a good love story from time to time. What are your favourites?", user: user9)

puts "Bookclubs created!"

puts "Attaching photos..."
bookclub1.photos.attach(io: URI.open("https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"), filename: 'startup.jpg', content_type: 'image/jpg')
bookclub2.photos.attach(io: URI.open("https://images.unsplash.com/photo-1551269901-5c5e14c25df7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"), filename: 'potter.jpg', content_type: 'image/jpg')
bookclub3.photos.attach(io: URI.open("https://images.unsplash.com/photo-1601229749354-b817e9929e65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"), filename: 'ruby.jpg', content_type: 'image/jpg')
#new
bookclub4.photos.attach(io: URI.open("https://images.unsplash.com/photo-1588497859490-85d1c17db96d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"), filename: 'ebook.jpg', content_type: 'image/jpg')
bookclub5.photos.attach(io: URI.open("https://images.unsplash.com/photo-1553465528-5a213ccc0c7b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=686&q=80"), filename: 'thriller.jpg', content_type: 'image/jpg')
bookclub6.photos.attach(io: URI.open("https://images.unsplash.com/photo-1515541965486-309946b5572b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80"), filename: 'spot.jpg', content_type: 'image/jpg')
bookclub7.photos.attach(io: URI.open("https://images.unsplash.com/photo-1585521551422-497df464aa43?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: 'classics.jpg', content_type: 'image/jpg')
bookclub8.photos.attach(io: URI.open("https://images.unsplash.com/photo-1502230831726-fe5549140034?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80"), filename: 'mindfulness.jpg', content_type: 'image/jpg')
bookclub9.photos.attach(io: URI.open("https://images.unsplash.com/photo-1569858570155-5b3e7bf3e9dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: 'children.jpg', content_type: 'image/jpg')
bookclub10.photos.attach(io: URI.open("https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: 'plane.jpg', content_type: 'image/jpg')
bookclub11.photos.attach(io: URI.open("https://images.unsplash.com/photo-1532517891316-72a08e5c03a7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80"), filename: 'vacation.jpg', content_type: 'image/jpg')
bookclub12.photos.attach(io: URI.open("https://images.unsplash.com/flagged/photo-1591553234204-2d05772ba364?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=716&q=80"), filename: 'knife.jpg', content_type: 'image/jpg')
bookclub13.photos.attach(io: URI.open("https://images.unsplash.com/photo-1503682464640-6173ea830f8f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: 'poetry.jpg', content_type: 'image/jpg')
bookclub14.photos.attach(io: URI.open("https://images.unsplash.com/photo-1585852738589-c585bb9a05b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=670&q=80"), filename: 'biography.jpg', content_type: 'image/jpg')
bookclub15.photos.attach(io: URI.open("https://images.unsplash.com/photo-1541253361369-0bad3e717ba5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"), filename: 'love.jpg', content_type: 'image/jpg')
puts "Attached!"

puts "Creating Bookclub with different members..."

# Bookclub 1 with different members 3
BookclubUser.create!(bookclub: bookclub1, user: user2)
BookclubUser.create!(bookclub: bookclub1, user: user4)
BookclubUser.create!(bookclub: bookclub1, user: user5)
BookclubUser.create!(bookclub: bookclub1, user: user9)
# BookclubUser.create!(bookclub: bookclub1, user: user1)

# Bookclub 2 with different members
# BookclubUser.create!(bookclub: bookclub2, user: user4)
BookclubUser.create!(bookclub: bookclub2, user: user2)
BookclubUser.create!(bookclub: bookclub2, user: user3)
BookclubUser.create!(bookclub: bookclub2, user: user5)
BookclubUser.create!(bookclub: bookclub2, user: user6)

# Bookclub 3 with different members
# BookclubUser.create!(bookclub: bookclub3, user: user5)
BookclubUser.create!(bookclub: bookclub3, user: user2)
BookclubUser.create!(bookclub: bookclub3, user: user3)
BookclubUser.create!(bookclub: bookclub3, user: user4)
BookclubUser.create!(bookclub: bookclub3, user: user7)
#new
# Bookclub 4 with different members
# BookclubUser.create!(bookclub: bookclub3, user: user10)
BookclubUser.create!(bookclub: bookclub4, user: user2)
BookclubUser.create!(bookclub: bookclub4, user: user3)
BookclubUser.create!(bookclub: bookclub4, user: user4)
BookclubUser.create!(bookclub: bookclub4, user: user11)

# Bookclub 5 with different members
# BookclubUser.create!(bookclub: bookclub5, user: user13)
BookclubUser.create!(bookclub: bookclub5, user: user5)
BookclubUser.create!(bookclub: bookclub5, user: user6)
BookclubUser.create!(bookclub: bookclub5, user: user7)
BookclubUser.create!(bookclub: bookclub5, user: user8)
BookclubUser.create!(bookclub: bookclub5, user: user9)
BookclubUser.create!(bookclub: bookclub5, user: user13)


# Bookclub 6 with different members
# BookclubUser.create!(bookclub: bookclub6, user: user9)
BookclubUser.create!(bookclub: bookclub6, user: user2)
BookclubUser.create!(bookclub: bookclub6, user: user3)
BookclubUser.create!(bookclub: bookclub6, user: user4)
BookclubUser.create!(bookclub: bookclub6, user: user10)
# Bookclub 7 with different members
# BookclubUser.create!(bookclub: bookclub7, user: user12)
BookclubUser.create!(bookclub: bookclub7, user: user2)
BookclubUser.create!(bookclub: bookclub7, user: user3)
BookclubUser.create!(bookclub: bookclub7, user: user4)
BookclubUser.create!(bookclub: bookclub7, user: user8)
BookclubUser.create!(bookclub: bookclub7, user: user9)
BookclubUser.create!(bookclub: bookclub7, user: user10)
BookclubUser.create!(bookclub: bookclub7, user: user11)
BookclubUser.create!(bookclub: bookclub7, user: user6)


# Bookclub 8 with different members
# BookclubUser.create!(bookclub: bookclub8, user: user8)
BookclubUser.create!(bookclub: bookclub8, user: user2)
BookclubUser.create!(bookclub: bookclub8, user: user3)
BookclubUser.create!(bookclub: bookclub8, user: user4)
BookclubUser.create!(bookclub: bookclub8, user: user7)
BookclubUser.create!(bookclub: bookclub8, user: user9)
BookclubUser.create!(bookclub: bookclub8, user: user10)
BookclubUser.create!(bookclub: bookclub8, user: user11)
BookclubUser.create!(bookclub: bookclub8, user: user12)
BookclubUser.create!(bookclub: bookclub8, user: user6)

# Bookclub 8 with different members
# BookclubUser.create!(bookclub: bookclub9, user: user6)
BookclubUser.create!(bookclub: bookclub9, user: user2)
BookclubUser.create!(bookclub: bookclub9, user: user3)
BookclubUser.create!(bookclub: bookclub9, user: user4)
BookclubUser.create!(bookclub: bookclub9, user: user8)
BookclubUser.create!(bookclub: bookclub9, user: user9)
BookclubUser.create!(bookclub: bookclub9, user: user10)
BookclubUser.create!(bookclub: bookclub9, user: user11)
BookclubUser.create!(bookclub: bookclub9, user: user12)
BookclubUser.create!(bookclub: bookclub9, user: user5)


# Bookclub 10 with different members
# BookclubUser.create!(bookclub: bookclub10, user: user12)
BookclubUser.create!(bookclub: bookclub10, user: user2)
BookclubUser.create!(bookclub: bookclub10, user: user3)
BookclubUser.create!(bookclub: bookclub10, user: user4)
BookclubUser.create!(bookclub: bookclub10, user: user8)
BookclubUser.create!(bookclub: bookclub10, user: user9)
BookclubUser.create!(bookclub: bookclub10, user: user10)

# Bookclub 11 with different members
# BookclubUser.create!(bookclub: bookclub11, user: user10)
BookclubUser.create!(bookclub: bookclub11, user: user2)
BookclubUser.create!(bookclub: bookclub11, user: user4)
BookclubUser.create!(bookclub: bookclub11, user: user6)
BookclubUser.create!(bookclub: bookclub11, user: user8)
BookclubUser.create!(bookclub: bookclub11, user: user12)
BookclubUser.create!(bookclub: bookclub11, user: user13)


# Bookclub 12 with different members
# BookclubUser.create!(bookclub: bookclub12, user: user3)
BookclubUser.create!(bookclub: bookclub12, user: user8)
BookclubUser.create!(bookclub: bookclub12, user: user9)
BookclubUser.create!(bookclub: bookclub12, user: user10)
BookclubUser.create!(bookclub: bookclub12, user: user4)
BookclubUser.create!(bookclub: bookclub12, user: user5)
BookclubUser.create!(bookclub: bookclub12, user: user12)
BookclubUser.create!(bookclub: bookclub12, user: user13)
BookclubUser.create!(bookclub: bookclub12, user: user3)
BookclubUser.create!(bookclub: bookclub12, user: user7)

# Bookclub 13 with different members
# BookclubUser.create!(bookclub: bookclub13, user: user5)
BookclubUser.create!(bookclub: bookclub13, user: user2)
BookclubUser.create!(bookclub: bookclub13, user: user3)
BookclubUser.create!(bookclub: bookclub13, user: user4)
BookclubUser.create!(bookclub: bookclub13, user: user6)
BookclubUser.create!(bookclub: bookclub13, user: user8)
BookclubUser.create!(bookclub: bookclub13, user: user12)
BookclubUser.create!(bookclub: bookclub13, user: user11)
BookclubUser.create!(bookclub: bookclub13, user: user10)

# Bookclub 14 with different members
# BookclubUser.create!(bookclub: bookclub14, user: user8)
BookclubUser.create!(bookclub: bookclub14, user: user12)
BookclubUser.create!(bookclub: bookclub14, user: user3)
BookclubUser.create!(bookclub: bookclub14, user: user4)
BookclubUser.create!(bookclub: bookclub14, user: user5)
BookclubUser.create!(bookclub: bookclub14, user: user7)
BookclubUser.create!(bookclub: bookclub14, user: user9)

# Bookclub 15 with different members
# BookclubUser.create!(bookclub: bookclub15, user: user9)
BookclubUser.create!(bookclub: bookclub15, user: user2)
BookclubUser.create!(bookclub: bookclub15, user: user8)
BookclubUser.create!(bookclub: bookclub15, user: user10)
BookclubUser.create!(bookclub: bookclub15, user: user12)
BookclubUser.create!(bookclub: bookclub15, user: user3)

puts "Created Bookclubs with different members!"

puts "Creating Threads..."

thread1 = BookclubThread.create!(title: "Stephen Kings's best book", content: "I really love all of King's books, but what would you say is his masterpiece?", bookclub: bookclub12 , user: user3)
thread2 = BookclubThread.create!(title: "Any good thrillers?", content: "What was the last captivating thriller you have read? I need some inspiration please :)", bookclub: bookclub12 , user: user13)
thread3 = BookclubThread.create!(title: "Quick reads", content: "Hey guys, do you know good thrillers with 250 pages max? ", bookclub: bookclub12 , user: user12)
thread4 = BookclubThread.create!(title: "Would you consider the'Perfume' by Patrick Süskind a thriller?", content: "I really love this book, but I was in a bad fight with my boyfriend whether this book can be called a thriller. What do you think?", bookclub: bookclub12 , user: user5)
puts "Created Threads!"

puts "Creating Comments..."

#stephen king
Comment.create!(content: "For me this would definitely be 'The Shining'. I have read it multiple times.", user: user2, bookclub_thread: thread1)
Comment.create!(content: "No way Anna, his masterpiece is 'If it bleeds'!!! Maybe not as popular though...", user: user4, bookclub_thread: thread1)
Comment.create!(content: "Needful Things is also a really, really good one. My grandfather gave it to me as a present, maybe I'm biased here.", user: user6, bookclub_thread: thread1)

#good thrillers thread
Comment.create!(content: "I recommend 'The Exorcist', I could hardly put the book aside!", user: user8, bookclub_thread: thread2)

#quick reads
Comment.create!(content: "The Talented Mr. Ripley has 252, I hope that counts. It's an amazing book, I read it on the plane a few months ago.", user: user7, bookclub_thread: thread3)

#perfume
Comment.create!(content: "I would rather say this one is Horror Fiction or Mystery, especially when looking at the ending of it", user: user8, bookclub_thread: thread4)
Comment.create!(content: "I agree with Lea. Hope you win this fight against your boyfriend ;)", user: user9, bookclub_thread: thread4)
Comment.create!(content: "Plus one to Lea!", user: user17, bookclub_thread: thread4)
puts "Comments created!"

## rails db:drop db:create db:migrate db:seed
## bundle && yarn install && rails db:drop db:create db:schema:dump db:migrate db:seed
