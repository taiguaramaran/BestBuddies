require "open-uri"

Partner.destroy_all
User.destroy_all
Animal.destroy_all

###################PARTNERS##################
puts 'Creating Partners ...'
angels_bark = Partner.new(name: 'Angels Bark Dog Rescue',
                          address: 'Beverly Hills, CA 90210',
                          email: 'angelsbarkdogrescue@gmail.com',
                          phone: '888 667 5560')
angels_bark.save!

meow_animal_rescue = Partner.new(name: 'Meow Animal Rescue',
                          address: 'Los Angeles, CA 90046',
                          email: 'thecatsmeow@gmail.com',
                          phone: '888 734 5569')
meow_animal_rescue.save!
puts 'Partner created !!!'


###################USERS##################
puts "Creating Users ..."
file = URI.open('https://thispersondoesnotexist.com/image')
brad = User.new(name: 'Brad Gibson', address: '9278 new road', age: 26, role: 0, email: "brad.gibson@gmail.com", password: "123123")
brad.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
brad.save!

file = URI.open('https://thispersondoesnotexist.com/image')
celma = User.new(name: 'Celma Mendes', address: '7706, Rua Boa Vista', age: 42, role: 1, email: "celma.mendes@animalrescue.com", password: "123123", partner: Partner.first)
celma.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
celma.save!

file = URI.open('https://thispersondoesnotexist.com/image')
bill = User.new(name: 'Bill Moreno', address: '239, Kingsway', age: 49, role: 2, email: "bill.moreno@meowanimalrescue.com", password: "123123")
bill.photo.attach(io: file, filename: 'user.jpg', content_type: 'image/jpg')
bill.save!
puts "Users Created !!!"

###################ANIMALS##################

puts 'Creating Animals ...'

file = URI.open('https://pet-uploads.adoptapet.com/7/7/b/567228639.jpg')
toto = Animal.new(user: User.first, name: 'Toto', breed: 'Mixed', category: "Dog",
                  size: "Small", gender: "Female", age: "Up to six months old",
                  description: "Toto is the friend you need!")
toto.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
toto.save!

file = URI.open('https://pet-uploads.adoptapet.com/f/b/a/492553566.jpg')
duke = Animal.new(user: User.first, name: 'Duke', breed: 'German Shepherd Dog',
                  category: "Dog", size: "Large", gender: "Male", age: "More than 5 years old",
                  description: "This sweet boy is fully-trained by a great trainer,
                  K9 Coach OJ – he knows all his basic commands and is very obedient.",
                  partner: Partner.first)
duke.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
duke.save!

file = URI.open('https://pet-uploads.adoptapet.com/9/7/6/567226320.jpg')
lacey = Animal.new(user: User.first, name: 'Lacey', breed: 'Chihuahua/French Bulldog Mix',
                   category: "Dog", size: "Small", gender: "Female", age: "Up to six months old",
                   description: "She is one of those dogs that just loves to be at her person's side.")
lacey.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lacey.save!

file = URI.open('https://pet-uploads.adoptapet.com/3/8/d/565360240.jpg')
bradley = Animal.new(user: User.first, name: 'Bradley', breed: 'Chihuahua Mix',
                     category: "Dog", size: "Small", gender: "Male", age: "Up to six months old",
                     description: "He is the sweetest and friendliest dog we have ever seen -
                     he just loves everybody he meets and his tail doesn't stop wagging.", partner: Partner.first)
bradley.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
bradley.save!

file = URI.open('https://pet-uploads.adoptapet.com/7/1/2/532926912.jpg')
lobo = Animal.new(user: User.first, name: 'Lobo', breed: 'German Shepherd Dog',
                  category: "Dog", size: "Large", gender: "Male",
                  age: "More than 5 years old", description: "He is a very sweet, loving and friendly dog
                  who adores his people.", partner: Partner.first)
lobo.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')
lobo.save!

file = URI.open('https://pet-uploads.adoptapet.com/6/7/7/570650265.jpg')
figaro = Animal.new(user: User.first, name: 'Figaro', breed: 'Domestic', category: "Cat",
                    size: "Small", gender: "Male", age: "More than 5 years old",
                    description: "Fig is an amazing cat with a lot of spunk.
                    He needs someone who can give him lots of attention and love.", partner: Partner.last)
figaro.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
figaro.save!

file = URI.open('https://pet-uploads.adoptapet.com/e/a/6/477702222.jpg')
gracie = Animal.new(user: User.first, name: 'Gracie', breed: 'Domestic',
  category: "Cat", size: "Small", gender: "Female",
  age: "Up to 2 years old", description: "Fig is an amazing cat with a lot of spunk.
  He needs someone who can give him lots of attention and love.", partner: Partner.last)
  gracie.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
  gracie.save!

file = URI.open('https://pet-uploads.adoptapet.com/d/8/0/484736670.jpg')
nyx = Animal.new(user: User.first, name: 'Nyx', breed: 'Domestic',
                 category: "Cat", size: "Small", gender: "Female",
                 age: "Up to six months old", description: "Nyx is a black domestic short hair cat.
                 She is a very loving cat when she gets comfortable around you.", partner: Partner.last)
nyx.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')
nyx.save!

puts 'Animals created!!!'
