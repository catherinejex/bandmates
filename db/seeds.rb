require 'open-uri'
puts "cleaning db"

Message.delete_all
Chatroom.delete_all
Post.delete_all
Favourite.delete_all
User.delete_all

puts "db clean"
puts "create users"

user1 = User.create!(email: "turnstile@hello.com", password: "123456", username: "Turnstile", bio: "We are an American hardcore punk band from Baltimore, Maryland formed in 2010. We have released five EPs and three studio albums", location: "Baltimore, Maryland USA", instrument_list: ["vocals," "guitars", "bass", "drums"], genre_list: ["Hardcore Punk", "Alternative Rock"], experience: "Professional" )
user1.photos.attach(io: File.open('app/assets/images/turnstile.jpeg'), filename: 'turnstile.jpeg', content_type: 'image/jpg')
user1.photos.attach(io: File.open('app/assets/images/turnstile2.jpeg'), filename: 'turnstile2.jpeg', content_type: 'image/jpg')
user1.photos.attach(io: File.open('app/assets/images/turnstile3.jpeg'), filename: 'turnstile3.jpeg', content_type: 'image/jpg')

user2 = User.create!(email: "alan@hello.com", password: "123456", username: "Alan Rodriguez", bio: "I play the bapipes, a few years of experience. If you're looking for lessons, or need me to annoy your neighbour message me.", location: "London & Madrid", instrument_list: ["Bagpipes"], genre_list: ["Galician"], experience: "Intermedio")
user2.photos.attach(io: File.open('app/assets/images/alan.jpg'), filename: 'alan.jpg', content_type: 'image/jpg')

user3 = User.create!(email: "zoe@hello.com", password: "123456", username: "Zoe Monet", bio: "I play the violin. I have sold out shows. Classically trained. Serious enquiries only. I also teach violin at the musical school I used to go when I was little.", location: "Paris, France", instrument_list: ["Violin"], genre_list: ["Classical"], experience: "Advanced" )
user3.photos.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpg', content_type: 'image/jpg')

user4 = User.create!(email: "luca@hello.com", password: '123456', username: 'Luca Renzi', bio: "Ciao, I'm Luca from Rome. I've been playing clarinet all my life and I'm very passionate about my music. I have live gigs mostly in Italy, but I'll be soon playing in London and I would love to meet up with some fellow musicians! You can find me in 'Ain't Nothin But The Blues Bar' on Friday's night.", location: "Rome, Italy", instrument_list: ["Clarinet", "Flute"], genre_list: ['Jazz', 'Blues'], experience: "Professional")
user4.photos.attach(io: File.open('app/assets/images/luca.jpeg'), filename: 'luca.jpeg', content_type: 'image/jpg')
user4.photos.attach(io: File.open('app/assets/images/luca-bar.jpeg'), filename: 'luca-bar.jpeg', content_type: 'image/jpg')

user5 = User.create!(email: "blackpumas@hello.com", password: "123456", username: "Black Pumas", bio: "We're an American psychedelic soul band based in Austin, Texas, led by singer/songwriter Eric Burton and guitarist/producer Adrian Quesada. We received our first Grammy Award nomination in 2020 for Best New Artist. We're looking for a female vocalist to join our group. ", location: "Austin, Texas USA", instrument_list: ["Vocals", "Guitar"], genre_list: ["Psychedelic soul", "R&B"], experience: "Professional" )
user5.photos.attach(io: File.open('app/assets/images/black-pumas.jpg'), filename: 'black-pumas.jpg', content_type: 'image/jpg')
user5.photos.attach(io: File.open('app/assets/images/black-pumas2.jpg'), filename: 'black-pumas2.jpg', content_type: 'image/jpg')
user5.photos.attach(io: File.open('app/assets/images/black-pumas3.jpeg'), filename: 'black-pumas3.jpeg', content_type: 'image/jpg')

user6 = User.create!(email: "ben@hello.com", password: "123456", username: "Ben 'The Figma' McWagon", bio: "I'm a mean drummer and play the harmonica. If you are cool enough join my band ping me here. My band is 31 strong and meet every day on Kingsland road for 9 hours, all 31 memebers play the keyboards!", location: "Shoreditch, Greater London UK", instrument_list: ["Drums", "Harmonica"], genre_list: ["Country", "2010 Hip-hop"], experience: "Intermediate" )
user6.photos.attach(io: File.open('app/assets/images/ben.png'), filename: 'ben.png', content_type: 'image/png')

user7 = User.create!(email: "alex@hello.com", password: '123456', username: "Alexandre Morey", bio: "Bonjour, j'ai recemment commence a jouer du Ukulele. Je suis maintenant un expert, je peux jouer tous les morceaux de musique que vous voulez. Mais pour ca, il faut que je sois a la plage!", location: "London", instrument_list: ["Ukulele"], genre_list: ["Beach Vibes"], experience: "Advanced")
user7.photos.attach(io: File.open('app/assets/images/alex.jpg'), filename: 'alex.jpg', content_type: 'image/jpeg')

user8 = User.create!(email: "raeesa@hello.com", password: "123456", username: "Raeesa Qureshi", bio: "I play the organ casually on the weekends when I'm not coding or performing triple heart bypasses. I make fusion Brit-pop and soul, kinda snazzy", location: "Kent, UK", instrument_list: ["Church Organ"], genre_list: ["Brit-pop", "Soul"], experience: "Intermediate" )
user8.photos.attach(io: File.open('app/assets/images/Raeesa.jfif'), filename: 'Raeesa.jfif', content_type: 'image/jfif')

user9 = User.create!(email: "ford@hello.com", password: '123456', username: 'Ford Burgess', bio: "Hey guys, I'm Ford and I've been playing the guitar since I was 14; I really love blues music (Eric Clapton, Stevie Ray Vaughan) but I also like to play 90s music, mostly grunge/britpop. I'm looking to be a form or join a band that plays either genre.", location: "London, UK", instrument_list: ["Guitar"], genre_list: ['Blues', 'Grunge', 'Alternative'], experience: "Advanced")
user9.photos.attach(io: File.open('app/assets/images/ford-playing-guitar.JPG'), filename: 'ford-playing-guitar.JPG', content_type: 'image/JPG')
user9.photos.attach(io: File.open('app/assets/images/fordpose.png'), filename: 'fordpose.png', content_type: 'image/JPG')

user10 = User.create!(email: "門脇@hello.com", password: '123456', username: '門脇 義雄', bio: "私はチーズケーキが大好きです。とても美味しいです。暑い日に素敵なチーズケーキとドクターペッパーに勝るものはありません", location: "Pleasant Valley, Mississipi USA", instrument_list: ['Steel Drums'], genre_list: ['Rap, Classical'], experience: "Professional")
user10.photos.attach(io: File.open('app/assets/images/steeldrum1.jpeg'), filename: 'steeldrum1.jpeg', content_type: 'image/jpeg')
user10.photos.attach(io: File.open('app/assets/images/steeldrum2.jpeg'), filename: 'steeldrum2.jpeg', content_type: 'image/jpeg')

user11 = User.create!(email: "liam@hello.com", password: '123456', username: 'Liam Gallagher', bio: "I'm an average lad who was born in Burnage who played conkers. Conkers, mate. Conkers. The lot. And now I'm in a band and nothing's changed. I like Noel outside the band. Human Noel - that's my brother - I adore him and I'd do anything for him. But the geezer that's in this fucking business, he's one of the biggest cocks in the universe.", location: "Manchester, UK", instrument_list: ["Vocals", "Tambourine"], genre_list: ['britpop'], experience: "Professional")
user11.photos.attach(io: File.open('app/assets/images/liam1.jpg'), filename: 'liam1.jpg', content_type: 'image/jpg')
user11.photos.attach(io: File.open('app/assets/images/liam2.jpeg'), filename: 'liam2.jpeg', content_type: 'image/jpeg')

user12 = User.create!(email: "jack@hello.com", password: '123456', username: 'Jukebox Jack', bio: "I'm an average geezer from London (not American). Ive been playing the spoons for over 8 years, classically trained and all. They call me Jukebox Jack because I know 500 songs off by heart, my friends tell me I have a good voice too.", location: "Stanmore, Greater London UK", instrument_list: ["Spoons", "Vocals"], genre_list: ['The Algerian kind'])
user12.photos.attach(io: File.open('app/assets/images/jack.jpg'), filename: 'jack.jpg', content_type: 'image/jpg')

user13 = User.create!(email: "oli@hello.com", password: '123456', username: 'Oli Finn', bio: "Hi everyone, Im a wizard on the synth, get at me to make some bangers. I make beats and write bars. Buy my mixtape too and check out my soundcloud.", location: "Leeds, UK", instrument_list: ["Synth", "Rapper"], genre_list: ['Celestial', "Hip-Hop", "Jungle"], experience: "Intermediate")
user13.photos.attach(io: File.open('app/assets/images/oli.jfif'), filename: 'oli.jfif', content_type: 'image/jfif')

user14 = User.create!(email: "cat@hello.com", password: '123456', username: 'Catherine', bio: "Hi there, I'm Catherine. I just moved back to the UK and looking to meet people with similar music taste as I. I've been playing bass (4 string) for about 3 years now.", location: "Kingston Upon Thames, Greater London UK", instrument_list: ["Bass"], genre_list: ['Death metal', "shoegaze", "Alternative"], experience: "Advanced")
user14.photos.attach(io: File.open('app/assets/images/cat.JPG'), filename: 'cat.JPG', content_type: 'image/JPG')

user15 = User.create!(email: "jlh@hello.com", password: '123456', username: 'Just Like Heaven', bio: "Just Like Heaven- an alternative rock group based in Birmingham, AL. Check us out on Spotify, Bandcamp, Facebook, and Instagram", location: "Birmingham, Alabama USA", instrument_list: ["Vocals", "Lead guitar", "Rhythm guitar","Bass", "Drums"], genre_list: ["Alternative Rock"], experience: "Professional")
user15.photos.attach(io: File.open('app/assets/images/jlh.jpg'), filename: 'jlh.jpg', content_type: 'image/jpg')
user15.photos.attach(io: File.open('app/assets/images/jlh2.jpg'), filename: 'jlh2.jpg', content_type: 'image/jpg')
user15.photos.attach(io: File.open('app/assets/images/jlh3.jpg'), filename: 'jlh3.jpg', content_type: 'image/jpg')

user16 = User.create!(email: "seb@hello.com", password: '123456', username: 'Seb Lowe', bio: "Hi, my name is Seb, I'm a singer and songwriter. I play acoustic guitar. I wrote a 7 track mini-album called 'Half-decent', which should be dropping soon on Spotify and other platforms. I'm also looking for a producer, if anyone is interested please send me a message!", location: "Manchester, UK", instrument_list: ["Vocals", "Accoustic guitar"], genre_list: ["Alternative", "Indie"], experience: "Professional")
user16.photos.attach(io: File.open('app/assets/images/seb-lowe-2-2.jpg'), filename: 'seb-lowe-2-2.jpg', content_type: 'image/jpg')
user16.photos.attach(io: File.open('app/assets/images/seb.jpg'), filename: 'seb.jpg', content_type: 'image/jpg')

user17 = User.create!(email: "saffran@hello.com", password: "123456", username: "Saffran", bio: "Five chefs from a musical-theatrical recipe called Saffran! We have gigs all over the world and if you want to hire us, just send as a message and we'll respond as soon as possible!", location: "Barcelona, Spain", instrument_list: ["Vocals", "Cello", "Violin"], genre_list: ["Flamenco", "Spanish Folk"], experience: "Novice" )
user17.photos.attach(io: File.open('app/assets/images/saffran.jpg'), filename: 'saffran.jpg', content_type: 'image/jpg')
user17.photos.attach(io: File.open('app/assets/images/saffran2.jpeg'), filename: 'saffran2.jpeg', content_type: 'image/jpg')
user17.photos.attach(io: File.open('app/assets/images/saffran3.jpg'), filename: 'saffran3.jpg', content_type: 'image/jpg')

user18 = User.create!(email: "cello@hello.com", password: '123456', username: 'Cello Girl', bio: "Hi there, I'm Sarah, but I usually go by the name of Cello Girl. I started playing cello when I was a little girl and I used to play for London Symphony Orchestra. I'm now working as a cello teacher, but I always wanted to be a part of a small classical band. If anyone is looking for a cellist, let me know in the messages. ",  location: "Watford, UK", instrument_list: ["Cello"], genre_list: ["Classical", "Symphony", "Concerto"], experience: "Professional")
user18.photos.attach(io: File.open('app/assets/images/cello-girl.jpeg'), filename: 'cello-girl.jpeg', content_type: 'image/jpg')
user18.photos.attach(io: File.open('app/assets/images/cello-girl2.jpeg'), filename: 'cello-girl2.jpeg', content_type: 'image/jpg')
user18.photos.attach(io: File.open('app/assets/images/cello.jpeg'), filename: 'cello.jpeg', content_type: 'image/jpg')


user19 = User.create!(email: "dave@hello.com", password: '123456', username: 'Dave', bio: "I'm Dave, rapper, songwriter, DJ and record producer from South London. I'm working on my new album at the moment. Get in touch if you wanna learn more. ", location: "London UK", instrument_list: ["Vocals"], genre_list: ["Rap", "Hip-Hop"], experience: "Professional")
user19.photos.attach(io: File.open('app/assets/images/dave1.jpeg'), filename: 'dave1.jpeg', content_type: 'image/jpeg')
user19.photos.attach(io: File.open('app/assets/images/dave2.jpeg'), filename: 'dave2.jpeg', content_type: 'image/jpeg')
user19.photos.attach(io: File.open('app/assets/images/dave3.jpeg'), filename: 'dave3.jpeg', content_type: 'image/jpeg')

user20 = User.create!(email: "dean@hello.com", password: '123456', username: 'Dean Tresadern', bio: "Hi I'm Dean; a classy guy from London, Jack of all trades, master of some! You can catch me at Le Wagon when I'm not making sick beats", location: "London, UK", instrument_list: ["Theremin", "Vocals", "Vocoder"], genre_list: ['Electronica', "Sci-Fi"])
user20.photos.attach(io: File.open('app/assets/images/dean.jpg'), filename: 'dean.jpg', content_type: 'image/jpg')

puts "creating posts"


#post seeds

post1 = Post.create!(description: "I've been listening to some really good throwbacks lately 🖤", location: 'Kingston Upon Thames, Greater London', youtube_link: "https://www.youtube.com/embed/6A1xu0BSs2s", user: user14)

post2 = Post.create!(description: "Are you looking for a producer? I can fully mix and master your music, £30/hour. Inquire for details", location: 'Houston, Texas', user: user13)
post2.photo.attach(io: File.open('app/assets/images/studio.jpg'), filename: 'studio.jpg', content_type: 'image/jpg')

post3 = Post.create!(description: "I'm now offering violin lessons for $20 an hour!", location: 'Kensington, London', user: user3)
post3.photo.attach(io: File.open('app/assets/images/Violin-Teacher.jpg'), filename: 'Violin-Teacher.jpg', content_type: 'image/jpg')

post4 = Post.create!(description: "Come see us play tonight at Slim Jim's! We will be opening for The Radio Dept. and we go on at 9pm!", location: "Angel, London", user: user7)
post4.photo.attach(io: File.open('app/assets/images/post4.jpg'), filename: 'post4.jpg', content_type: 'image/jpg')

post5 = Post.create!(description: "New music alert! Check out 'Catherine's Space Station' on Spotify and Bandcamp!", location: "Alabama, USA", spotify_link: "https://open.spotify.com/embed/track/7tK4NqOuGcdykYx5FemHyS?utm_source=generator", user: user15)

post6 = Post.create!(description: "Our new album 'Glow On' is out now on Spotify, iTunes, or wherever you get your music.", location: 'Baltimore, Maryland, USA', user: user1)
post6.photo.attach(io: File.open('app/assets/images/turnstile_album.jpg'), filename: 'turnstile_album.jpeg', content_type: 'image/jpeg')

post7 = Post.create!(description: "Anyone remember this amazing performance?? Amazing!!", location: "Manchester, UK", youtube_link: "https://www.youtube.com/embed/6ayyfucIl6M", user: user16)

post8 = Post.create!(description: "If anyone is interested I have two tickets for this Saturday London Symphony Orchestra concert.", location: 'London, UK', user: user18)
post8.photo.attach(io: File.open('app/assets/images/orchestra1.jpeg'), filename: 'orchestra1.jpeg', content_type: 'image/jpeg')

post9 = Post.create!(description: "I had SO much fun at this concert my friend invited me to last night in London! Will definitely be looking for future dates!! 🎤", location: 'London, UK', user: user12)
post9.photo.attach(io: File.open('app/assets/images/post9.jpg'), filename: 'post9.jpg', content_type: 'image/jpg')

puts "finished"
