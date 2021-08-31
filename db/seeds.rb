# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Animal.destroy_all
User.create(name: 'taiguara', address: 'rua 1', age: '32', email:'taiguaramaran@gmail.com', password:'123123')


puts 'Creating Animal'
Animal.create(user: User.first, name: 'toto', breed: 'vira-lata', category: "cao", size: "pequeno", gender: "femea", age: "Ate 6 meses")
puts 'Animal created'
#Animal.create(name: 'rex', breed: 'vira-lata', category: "gato", size: "pequeno", gender: "macho", age: "Ate 2 anos")
#Animal.create(name: 'caramelo', breed: 'chihuahua', category: "cao", size: "grande", gender: "macho", age: "Ate 5 anos")
