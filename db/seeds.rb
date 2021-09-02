require "open-uri"

Animal.destroy_all
User.destroy_all

###################USERS##################
puts "Creating Users ..."
# image_url = JSON.parse(URI.open('https://thispersondoesnotexist.com').read)
file = URI.open('https://thispersondoesnotexist.com')
brad = User.new(name: 'Brad Gibson', address: '9278 new road', age: 26, role: 0, email: "brad.gibson@example.com", password: "123123")
brad.photo.attach(io: file, filename: 'person.jpg', content_type: 'image/jpg')
brad.save!

celma = User.new(name: 'Celma Mendes', address: '7706, Rua Boa Vista', age: 77, role: 1, email: "celma.mendes@example.com", password: "123123", partner: Partner.first)
celma.photo.attach(io: file, filename: 'person.jpg', content_type: 'image/jpg')
celma.save!

bill = User.new(name: 'Bill Moreno', address: '239, Kingsway', age: 39, role: 2, email: "bill.moreno@example.com", password: "123123")
bill.photo.attach(io: file, filename: 'person.jpg', content_type: 'image/jpg')
bill.save!
puts "Users Created !!!"

###################ANIMALS##################

puts 'Creating Animals ...'

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
toto = Animal.new(user: User.first, name: 'Toto', breed: 'mixed', category: "dog", size: "Small", gender: "Female", age: "Up to six months old")
toto.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
toto.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
duke = Animal.new(user: User.first, name: 'Duke', breed: 'German Shepherd Dog', category: "dog", size: "Big", gender: "Male", age: "More than 5 years old")
duke.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
duke.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
lacey = Animal.new(user: User.first, name: 'Lacey', breed: 'Chihuahua/French Bulldog Mix', category: "dog", size: "Small", gender: "Female", age: "Up to six months old")
lacey.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lacey.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
bradley = Animal.new(user: User.first, name: 'Bradley', breed: 'Chihuahua Mix', category: "dog", size: "Small", gender: "Male", age: "Up to six months old")
bradley.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
bradley.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
lobo = Animal.new(user: User.first, name: 'Lobo', breed: 'German Shepherd Dog', category: "dog", size: "Big", gender: "Male", age: "More than 5 years old")
lobo.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lobo.save!

file = URI.open('https://cataas.com/cat/cute')
figaro = Animal.new(user: User.first, name: 'Figaro', breed: 'Domestic', category: "cat", size: "Small", gender: "Male", age: "More than 5 years old")
figaro.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
figaro.save!

file = URI.open('https://cataas.com/cat/cute')
gracie = Animal.new(user: User.first, name: 'Gracie', breed: 'Domestic', category: "cat", size: "Small", gender: "Male", age: "Up to 2 years old")
gracie.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
gracie.save!

puts 'Animals created!!!'

###################PARTNERS##################
puts 'Creating Partners ...'
angels_bark = Partner.new(name: 'Angels Bark Dog Rescue', address: 'Beverly Hills, CA 90210')
angels_bark.save!
puts 'Partner created !!!'
