require 'open-uri'

Message.delete_all
Chatroom.delete_all
Post.delete_all
Favourite.delete_all
User.delete_all

user1 = User.create!(email: "kermit@hello.com", password: "123456", username: "Kermit Green", bio: "I'm a 20 year drumming veteran, I can play any style because I'm a G. I am looking for people to form a band with and sell out Wembley. Ive played with big names like Rammstein and 50 Cent", location: "Stoke Newington", instruments: ["Drums", "Vocals" , "Triangle"], genres: ["Rock", "Jazz", "Funk"])
user1.photos.attach(io: File.open('app/assets/images/drummer.jpg'), filename: 'drummer.jpg', content_type: 'image/jpg')

user2 = User.create!(email: "rick@hello.com", password: "123456", username: "Rick the Madman", bio: "Im just learning the guitar guys. Can someone let me join their band, am trying to learn. Can also make a good cup of coffee.", location: "Los Angeles", instruments: ["Guitar"], genres: ["Punk"] )
user2.photos.attach(io: File.open('app/assets/images/guitar.jpg'), filename: 'guitar.jpg', content_type: 'image/jpg')

user3 = User.create!(email: "zoe@hello.com", password: "123456", username: "Zoe Monet", bio: "I play the violin. Have sold out shows. Classically trained. Serious enquiries only", location: "Paris", instruments: ["Violin"], genres: ["Classical"] )
user3.photos.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpg', content_type: 'image/jpg')

user4 = User.create!(email: "james@hello.com", password: "123456", username: "James Rodriguez", bio: "I play the bongos. Im a bit of a big deal back in Cuba. Send me a DM and I will see if you are worthy to play with me", location: "Havana", instruments: ["Bongos", "Flute"], genres: ["Latin"] )
user4.photos.attach(io: File.open('app/assets/images/james.jpg'), filename: 'james.jpg', content_type: 'image/jpg')

user5 = User.create!(email: "21@hello.com", password: "123456", username: "21 Savage", bio: "Hey guys, Im a savage. Join my crew. Looking for someone to make beats or anybody who can write.", location: "Atlanta", instruments: ["Rapper"], genres: ["Drill"] )
user5.photos.attach(io: File.open('app/assets/images/21-Savage.jpg'), filename: '21-Savage.jpg', content_type: 'image/jpg')

user6 = User.create!(email: "ben@hello.com", password: "123456", username: "Ben 'The Figma' McWagon", bio: "I'm a mean drummer and play the harmonica. If you are cool enough join my band ping me here. My band is 31 strong and meet every day on Kingsland road for 9 hours, all 31 memebers play the keyboards!", location: "Shoreditch", instruments: ["Drums", "Harmonica"], genres: ["Country", "2010 Hip-hop"] )
user6.photos.attach(io: File.open('app/assets/images/ben.png'), filename: 'ben.png', content_type: 'image/png')

user7 = User.create!(email: "pranjal@hello.com", password: '123456', username: "Pranjal Hernandez", bio: "Hello! I'm Pranjal and I love Balkan folk music! I've been playing the accordion since I was three and I would like to take my career to the next level and join a professional polka band.", location: "Houston, Texas", instruments: ["Accordion", "Guitar"], genres: ["Polka"])
user7.photos.attach(io: File.open('app/assets/images/accordion-boy.jpeg'), filename: 'accordion-boy.jpeg', content_type: 'image/jpeg')

user8 = User.create!(email: "raeesa@hello.com", password: "123456", username: "Raeesa Qureshi", bio: "I play the organ casually on the weekends when Im not coding or performing triple heart bypasses. I make fusion Brit-pop and soul, kinda snazzy", location: "Kent", instruments: ["Church Organ"], genres: ["Brit-pop", "Soul"] )
user8.photos.attach(io: File.open('app/assets/images/Raeesa.jfif'), filename: 'Raeesa.jfif', content_type: 'image/jfif')

user9 = User.create!(email: "ford@hello.com", password: '123456', username: 'Ford Burgess', bio: "Hey guys, I'm Ford and I've been playing the guitar since I was 14; I really love blues music (Eric Clapton, Stevie Ray Vaughan) but I also like to play 90s music, mostly grunge/britpop. I'm looking to be a form or join a band that plays either genre.", location: "London, UK", instruments: ["Guitar"], genres: ['Blues', 'Grunge', 'Alternative'])
user9.photos.attach(io: File.open('app/assets/images/ford-playing-guitar.JPG'), filename: 'ford-playing-guitar.JPG', content_type: 'image/JPG')

user10 = User.create!(email: "門脇@hello.com", password: '123456', username: '門脇 義雄', bio: "私はチーズケーキが大好きです。とても美味しいです。暑い日に素敵なチーズケーキとドクターペッパーに勝るものはありません", location: "Pleasant Valley, Mississipi", instruments: ['Steel Drums'], genres: ['Rap, Classical'])
user10.photos.attach(io: File.open('app/assets/images/steeldrum1.jpeg'), filename: 'steeldrum1.jpeg', content_type: 'image/jpeg')
user10.photos.attach(io: File.open('app/assets/images/steeldrum2.jpeg'), filename: 'steeldrum2.jpeg', content_type: 'image/jpeg')

user11 = User.create!(email: "liam@hello.com", password: '123456', username: 'Liam Gallagher', bio: "I'm an average lad who was born in Burnage who played conkers. Conkers, mate. Conkers. The lot. And now I'm in a band and nothing's changed. I like Noel outside the band. Human Noel - that's my brother - I adore him and I'd do anything for him. But the geezer that's in this fucking business, he's one of the biggest cocks in the universe.", location: "Manchester, UK", instruments: ["Vocals", "Tambourine"], genres: ['britpop'])
user11.photos.attach(io: File.open('app/assets/images/liam1.jpg'), filename: 'liam1.jpg', content_type: 'image/jpg')
user11.photos.attach(io: File.open('app/assets/images/liam2.jpeg'), filename: 'liam2.jpeg', content_type: 'image/jpeg')

user12 = User.create!(email: "jack@hello.com", password: '123456', username: 'Jukebox Jack', bio: "I'm an average geezer from London (not American). Ive been playing the spoons for over 8 years, classically trained and all. They call me Jukebox Jack because I know 500 songs off by heart, my friends tell me I have a good voice too.", location: "Stanmore", instruments: ["Spoons", "Vocals"], genres: ['The Algerian kind'])
user12.photos.attach(io: File.open('app/assets/images/jack.jpg'), filename: 'jack.jpg', content_type: 'image/jpg')

user13 = User.create!(email: "oli@hello.com", password: '123456', username: 'Synth Wizard', bio: "Hi everyone, Im a wizard on the synth, get at me to make some bangers. I make beats and write bars. Buy my mixtape too and check out my soundcloud.", location: "Leeds", instruments: ["Synth", "Rapper"], genres: ['Celestial', "Hip-Hop", "Jungle"])
user13.photos.attach(io: File.open('app/assets/images/oli.jfif'), filename: 'oli.jfif', content_type: 'image/jfif')


post1 = Post.create!(description: "Had a great time playing at CBGB's tonight! Off to Philadelphia next.", location: 'East Village, New York', user: user1)
post1.photo.attach(io: File.open('app/assets/images/srv.jpeg'), filename: 'srv.jpeg', content_type: 'image/jpeg')

post2 = Post.create!(description: "I'm now offering violin lessons for $20 an hour!", location: 'Kensington, London', user: user2)
post2.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpeg', content_type: 'image/jpg')

post3 = Post.create!(description: "Are you looking for a producer? I can fully mix and master your music, £30/hour. Inquire for details", location: 'Houston, Texas', user: user4)
post3.photo.attach(io: File.open('app/assets/images/studio.jpg'), filename: 'studio.jpg', content_type: 'image/jpg')

post4 = Post.create!(description: "Come see us play tonight at Slim Jim's! We will be opening for The Radio Dept. and we go on at 9pm!", location: "Angel, London", user: user7)
post4.photo.attach(io: File.open('app/assets/images/slimjims.jpeg'), filename: 'slimjims.jpeg', content_type: 'image/jpeg')
