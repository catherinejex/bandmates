require 'open-uri'

User.delete_all

user = User.create!(email: "1@hello.com", password: "123456", username: "drummerboy21", bio: "hey guys, i play the drums.", location: "Stoke Newington", instruments: "drums", genres: "funk" )
user.photo.attach(io: File.open('app/assets/images/drummer.jpg'), filename: 'drummer.jpg', content_type: 'image/jpg')

user = User.create!(email: "2@hello.com", password: "123456", username: "guitarboy21", bio: "hey guys, i play the guitar.", location: "Los Angeles", instruments: "guitar", genres: "punk" )
user.photo.attach(io: File.open('app/assets/images/guitar.jpg'), filename: 'guitar.jpg', content_type: 'image/jpg')

user = User.create!(email: "3@hello.com", password: "123456", username: "violin-gal21", bio: "hey guys, i play the violin.", location: "Paris", instruments: "violin", genres: "classical" )
user.photo.attach(io: File.open('app/assets/images/violin.jpg'), filename: 'violin.jpg', content_type: 'image/jpg')

user = User.create!(email: "4@hello.com", password: "123456", username: "bongohead21", bio: "hey guys, i play the bongos.", location: "Sao Paulo", instruments: "bongos", genres: "latin" )
user.photo.attach(io: File.open('app/assets/images/bongo.jpg'), filename: 'bongo.jpg', content_type: 'image/jpg')

user = User.create!(email: "5@hello.com", password: "123456", username: "21Savage", bio: "hey guys, Im a savage.", location: "Atlanta", instruments: "rap", genres: "drill" )
user.photo.attach(io: File.open('app/assets/images/21-Savage.jpg'), filename: '21-Savage.jpg', content_type: 'image/jpg')
