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

user4 = User.create!(email: "4@hello.com", password: "123456", username: "bongohead21", bio: "hey guys, i play the bongos.", location: "Sao Paulo", instruments: ["bongos"], genres: ["latin"] )
user4.photo.attach(io: File.open('app/assets/images/bongo.jpg'), filename: 'bongo.jpg', content_type: 'image/jpg')

user5 = User.create!(email: "5@hello.com", password: "123456", username: "21Savage", bio: "hey guys, Im a savage.", location: "Atlanta", instruments: ["rap"], genres: ["drill"])
user5.photo.attach(io: File.open('app/assets/images/21-Savage.jpg'), filename: '21-Savage.jpg', content_type: 'image/jpg')

user6 = User.create!(email: "pranjal@hello.com", password: '123456', username: "Pranjal Hernandez", bio: "Hello! I'm Pranjal and I love Balkan folk music! I've been playing the accordion since I was three and I would like to take my career to the next level and join a professional polka band.", location: "Houston, Texas", instruments: ["accordion", "guitar"], genres: ["polka"])
user6.photo.attach(io: File.open('app/assets/images/accordion-boy.jpeg'), filename: 'accordion-boy.jpeg', content_type: 'image/jpeg')

user7 = User.create!(email: "ford@hello.com", password: '123456', username: 'Ford Burgess', bio: "Hey guys, I'm Ford and I've been playing the guitar since I was 14; I really love blues music (Eric Clapton, Stevie Ray Vaughan) but I also like to play 90s music, mostly grunge/britpop. I'm looking to be a form or join a band that plays either genre.", location: "London, UK", instruments: ["guitar"], genres: ['blues', 'grunge', 'alternative'])
user7.photo.attach(io: File.open('app/assets/images/ford-playing-guitar.JPG'), filename: 'ford-playing-guitar.JPG', content_type: 'image/JPG')

user8 = User.create!(email: "門脇@hello.com", password: '123456', username: '門脇 義雄', bio: "私はチーズケーキが大好きです。とても美味しいです。暑い日に素敵なチーズケーキとドクターペッパーに勝るものはありません", location: "Pleasant Valley, Mississipi", instruments: ['steel drums'], genres: ['rap, classical'])
user8.photo.attach(io: File.open('app/assets/images/steeldrum1.jpeg'), filename: 'steeldrum1.jpeg', content_type: 'image/jpeg')
user8.photo.attach(io: File.open('app/assets/images/steeldrum2.jpeg'), filename: 'steeldrum2.jpeg', content_type: 'image/jpeg')

post1 = Post.create!(description: "Had a great time playing at CBGB's tonight! Off to Philadelphia next.", location: 'East Village, New York', user: user1)
post1.photo.attach(io: File.open('app/assets/images/srv.jpeg'), filename: 'srv.jpeg', content_type: 'image/jpeg')

post2 = Post.create!(description: "I'm now offering violin lessons for $20 an hour!", location: 'Kensington, London', user: user2)
post2.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpeg', content_type: 'image/jpg')
