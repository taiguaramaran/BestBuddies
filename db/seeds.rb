require "open-uri"

Animal.destroy_all
User.destroy_all

###################USERS##################
puts "Creating Users ..."
User.create(name: 'Taiguara', address: 'rua 1', age: '32', email:'taiguaramaran@gmail.com', password:'123123')
puts "Users Created !!!"


###################ANIMALS##################

puts 'Creating Animals ...'


image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
toto = Animal.new(user: User.first, name: 'Toto', breed: 'mixed', category: "dog", size: "Small", gender: "Female", age: "Up to six months old")
toto.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
toto.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
duke = Animal.new(user: User.first, name: 'Duke', breed: 'German Shepherd Dog', category: "dog", size: "Big", gender: "Male", age: "More than 5 years old")
duke.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
duke.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
lacey = Animal.new(user: User.first, name: 'Lacey', breed: 'Chihuahua/French Bulldog Mix', category: "dog", size: "Small", gender: "Female", age: "Up to six months old")
lacey.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
lacey.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
bradley = Animal.new(user: User.first, name: 'Bradley', breed: 'Chihuahua Mix', category: "dog", size: "Small", gender: "Male", age: "Up to six months old")
bradley.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
bradley.save!

image_url = JSON.parse(URI.open('https://dog.ceo/api/breeds/image/random').read)['message']
file = URI.open(image_url)
lobo = Animal.new(user: User.first, name: 'Lobo', breed: 'German Shepherd Dog', category: "dog", size: "Big", gender: "Male", age: "More than 5 years old")
lobo.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
lobo.save!

file = URI.open('https://cataas.com/cat/cute')
figaro = Animal.new(user: User.first, name: 'Figaro', breed: 'Domestic', category: "cat", size: "Small", gender: "Male", age: "More than 5 years old")
figaro.photos.attach(io: file, filename: 'cat.png', content_type: 'image/png')
figaro.save!

file = URI.open('https://cataas.com/cat/cute')
gracie = Animal.new(user: User.first, name: 'Gracie', breed: 'Domestic', category: "cat", size: "Small", gender: "Male", age: "Up to 2 years old")
gracie.photos.attach(io: file, filename: 'cat.png', content_type: 'image/png')
gracie.save!

puts 'Animals created!!!'

###################PARTNERS##################
# puts 'Creating Partner ...'
# Partner.create
# puts 'Partner created !!!'
