# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:"Mariola", email:"mariola@gmail.com", password:"p1")
User.create(username:"Gabi", email:"gabi@gmail.com", password:"p2")

Ingredient.create(name:"carrot", quantity:1, user_id:1)
Ingredient.create(name:"apple", quantity:3, user_id:1)
Ingredient.create(name:"peach", quantity:1, user_id:2)

Recipe.create(name:"soup", user_id:1)
Recipe.create(name:"chicken", user_id:2)
