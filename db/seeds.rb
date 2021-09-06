require "open-uri"

Animal.destroy_all
User.destroy_all

###################PARTNERS##################
puts 'Creating Partners ...'
angels_bark = Partner.new(name: 'Angels Bark Dog Rescue', address: 'Beverly Hills, CA 90210')
angels_bark.save!
puts 'Partner created !!!'


###################USERS##################
puts "Creating Users ..."
file = URI.open('https://thispersondoesnotexist.com/image')
brad = User.new(name: 'Brad Gibson', address: '9278 new road', age: 26, role: 0, email: "brad.gibson@example.com", password: "123123")
brad.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
brad.save!

file = URI.open('https://thispersondoesnotexist.com/image')
celma = User.new(name: 'Celma Mendes', address: '7706, Rua Boa Vista', age: 42, role: 1, email: "celma.mendes@example.com", password: "123123", partner: Partner.first)
celma.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
celma.save!

file = URI.open('https://thispersondoesnotexist.com/image')
bill = User.new(name: 'Bill Moreno', address: '239, Kingsway', age: 49, role: 2, email: "bill.moreno@example.com", password: "123123")
bill.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
bill.save!
puts "Users Created !!!"

###################ANIMALS##################

puts 'Creating Animals ...'

file = URI.open('https://pet-uploads.adoptapet.com/7/7/b/567228639.jpg')
toto = Animal.new(user: User.first, name: 'Toto', breed: 'Mixed', category: "Dog", size: "Small", gender: "Female", age: "Up to six months old", description: "You'll fall in love with it!")
toto.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
toto.save!

file = URI.open('https://pet-uploads.adoptapet.com/f/b/a/492553566.jpg')
duke = Animal.new(user: User.first, name: 'Duke', breed: 'German Shepherd Dog', category: "Dog", size: "Large", gender: "Male", age: "More than 5 years old", description: "You'll fall in love with it!")
duke.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
duke.save!

file = URI.open('https://pet-uploads.adoptapet.com/9/7/6/567226320.jpg')
lacey = Animal.new(user: User.first, name: 'Lacey', breed: 'Chihuahua/French Bulldog Mix', category: "Dog", size: "Small", gender: "Female", age: "Up to six months old", description: "You'll fall in love with it!")
lacey.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lacey.save!

file = URI.open('https://pet-uploads.adoptapet.com/3/8/d/565360240.jpg')
bradley = Animal.new(user: User.first, name: 'Bradley', breed: 'Chihuahua Mix', category: "Dog", size: "Small", gender: "Male", age: "Up to six months old", description: "You'll fall in love with it!")
bradley.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
bradley.save!

file = URI.open('https://pet-uploads.adoptapet.com/7/1/2/532926912.jpg')
lobo = Animal.new(user: User.first, name: 'Lobo', breed: 'German Shepherd Dog', category: "Dog", size: "Large", gender: "Male", age: "More than 5 years old", description: "You'll fall in love with it!")
lobo.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lobo.save!

file = URI.open('https://pet-uploads.adoptapet.com/6/7/7/570650265.jpg')
figaro = Animal.new(user: User.first, name: 'Figaro', breed: 'Domestic', category: "Cat", size: "Small", gender: "Male", age: "More than 5 years old", description: "You'll fall in love with it!")
figaro.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
figaro.save!

file = URI.open('https://pet-uploads.adoptapet.com/e/a/6/477702222.jpg')
gracie = Animal.new(user: User.first, name: 'Gracie', breed: 'Domestic', category: "Cat", size: "Small", gender: "Female", age: "Up to 2 years old", description: "You'll fall in love with it!")
gracie.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
gracie.save!

puts 'Animals created!!!'

###################PARTNERS##################
puts 'Creating Partners ...'
angels_bark = Partner.new(name: 'Angels Bark Dog Rescue',
                          address: 'Beverly Hills, CA 90210',
                          email: 'angelsbarkdogrescue@gmail.com',
                          phone: '888-667-5560')
angels_bark.save!
puts 'Partner created !!!'
