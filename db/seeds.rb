require 'open-uri'

Post.delete_all
Favourite.delete_all
User.delete_all




user1 = User.create!(email: "1@hello.com", password: "123456", username: "drummerboy21", bio: "hey guys, i play the drums.", location: "Stoke Newington", instruments: ["drums"], genres: ["funk"] )
user1.photo.attach(io: File.open('app/assets/images/drummer.jpg'), filename: 'drummer.jpg', content_type: 'image/jpg')

user2 = User.create!(email: "2@hello.com", password: "123456", username: "guitarboy21", bio: "hey guys, i play the guitar.", location: "Los Angeles", instruments: ["guitar"], genres: ["punk"] )
user2.photo.attach(io: File.open('app/assets/images/guitar.jpg'), filename: 'guitar.jpg', content_type: 'image/jpg')

user3 = User.create!(email: "3@hello.com", password: "123456", username: "violin-gal21", bio: "hey guys, i play the violin.", location: "Paris", instruments: ["violin"], genres: ["classical"] )
user3.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpg', content_type: 'image/jpg')

user4 = User.create!(email: "4@hello.com", password: "123456", username: "bongohead21", bio: "hey guys, i play the bongos.", location: "Sao Paulo", instruments: ["bongos"], genres: ["latin"] )
user4.photo.attach(io: File.open('app/assets/images/bongo.jpg'), filename: 'bongo.jpg', content_type: 'image/jpg')


user5 = User.create!(email: "5@hello.com", password: "123456", username: "21Savage", bio: "hey guys, Im a savage.", location: "Atlanta", instruments: ["rap"], genres: ["drill"] )

user5.photo.attach(io: File.open('app/assets/images/21-Savage.jpg'), filename: '21-Savage.jpg', content_type: 'image/jpg')

users = [user1, user2, user3, user4, user5]


post1 = Post.create!(description: "Had a great time playing at CBGB's tonight! Off to Philadelphia next.", location: 'East Village, New York', user: user1)
post1.photo.attach(io: File.open('app/assets/images/srv.jpeg'), filename: 'srv.jpeg', content_type: 'image/jpeg')

post2 = Post.create!(description: "I'm now offering violin lessons for $20 an hour!", location: 'Kensington, London', user: user2)
post2.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpeg', content_type: 'image/jpg')
