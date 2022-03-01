require 'open-uri'


user = User.create!(email: "1@hello.com", password: "123456", username: "drummerboy21", bio: "hey guys, i play the drums.", location: "Stoke Newington", instruments: ["drums", "bongos"], genres: "funk" )
user.photo.attach(io: File.open('app/assets/images/drummer.jpg'), filename: 'drummer.jpg', content_type: 'image/jpg')
