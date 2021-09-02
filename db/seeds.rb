require "open-uri"

User.destroy_all
Animal.destroy_all

###################USERS##################
# puts "Creating Users"
# User.create(name: 'taiguara', address: 'rua 1', age: '32', email:'taiguaramaran@gmail.com', password:'123123')
# puts "Users Created"


###################ANIMALS##################

puts 'Creating Animal'
toto = Animal.create(user: User.first, name: 'Toto', breed: 'mixed', category: "dog", size: "Small", gender: "Female", age: "Up to six months old")
toto.photo.attach(io: file)

Animal.create(user: User.first, name: 'Duke', breed: 'German Shepherd Dog', category: "dog", size: "Big", gender: "Male", age: "More than 5 years old")
puts 'Animal created'

###################PARTNERS##################
# puts 'Creating Partner'
# Partner.create
# puts 'Partner created'
