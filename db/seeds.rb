# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.create(password: '12345678', email:'i@g.com', name:'Isaac' )

10.times do
  Post.create(title: Faker::Name.name, body: Faker::Creature::Animal.name, user_id:User.first.id)

end