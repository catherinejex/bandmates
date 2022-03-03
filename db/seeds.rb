require 'open-uri'


Post.delete_all
Favourite.delete_all
User.delete_all

user1 = User.create!(email: "1@hello.com", password: "123456", username: "Kermit Green", bio: "I'm a 20 year drumming veteran, I can play any style because I'm a G. I am looking for people to form a band with and sell out Wembley. Ive played with big names like Rammstein and 50 Cent", location: "Stoke Newington", instruments: ["Drums", "Vocals" , "Triangle"], genres: ["Rock", "Jazz", "Funk"])
user1.photo.attach(io: File.open('app/assets/images/drummer.jpg'), filename: 'drummer.jpg', content_type: 'image/jpg')

user2 = User.create!(email: "2@hello.com", password: "123456", username: "Rick the Madman", bio: "Im just learning the guitar guys. Can someone let me join their band, am trying to learn. Can also make a good cup of coffee.", location: "Los Angeles", instruments: ["Guitar"], genres: ["Punk"] )
user2.photo.attach(io: File.open('app/assets/images/guitar.jpg'), filename: 'guitar.jpg', content_type: 'image/jpg')

user3 = User.create!(email: "3@hello.com", password: "123456", username: "Zoe Monet", bio: "I play the violin. Have sold out shows. Classically trained. Serious enquiries only", location: "Paris", instruments: ["Violin"], genres: ["Classical"] )
user3.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpg', content_type: 'image/jpg')

user4 = User.create!(email: "4@hello.com", password: "123456", username: "James Rodriguez", bio: "I play the bongos. Im a bit of a big deal back in Cuba. Send me a DM and I will see if you are worthy to play with me", location: "Havana", instruments: ["Bongos", "Flute"], genres: ["Latin"] )
user4.photo.attach(io: File.open('app/assets/images/james.jpg'), filename: 'james.jpg', content_type: 'image/jpg')

user5 = User.create!(email: "5@hello.com", password: "123456", username: "21 Savage", bio: "Hey guys, Im a savage. Join my crew. Looking for someone to make beats or anybody who can write.", location: "Atlanta", instruments: ["Rapper"], genres: ["Drill"] )
user5.photo.attach(io: File.open('app/assets/images/21-Savage.jpg'), filename: '21-Savage.jpg', content_type: 'image/jpg')

user6 = User.create!(email: "6@hello.com", password: "123456", username: "Ben 'The Figma' McWagon", bio: "I'm a mean drummer and play the harmonica. If you are cool enough join my band ping me here. My band is 34 strong and meet every day on Kingsland road for 9 hours, all 34 memebers play the keyboards!", location: "Shoreditch", instruments: ["Drums", "Harmonica"], genres: ["Rock n Roll", "Blues", "90s Hip-hop"] )
user6.photo.attach(io: File.open('app/assets/images/ben.png'), filename: 'ben.png', content_type: 'image/png')

users = [user1, user2, user3, user4, user5]


post1 = Post.create!(description: "Had a great time playing at CBGB's tonight! Off to Philadelphia next.", location: 'East Village, New York', user: user1)
post1.photo.attach(io: File.open('app/assets/images/srv.jpeg'), filename: 'srv.jpeg', content_type: 'image/jpeg')

post2 = Post.create!(description: "I'm now offering violin lessons for $20 an hour!", location: 'Kensington, London', user: user2)
post2.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpeg', content_type: 'image/jpg')
