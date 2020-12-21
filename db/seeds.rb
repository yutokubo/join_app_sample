# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username:  "Example User",
    email: "test1234asdf@gmail.com",
    password:              "password",
    password_confirmation: "password")
Message.create(user_id: 1, content: 'hello01')
Message.create(user_id: 1, content: 'hello02')
Message.create(user_id: 1, content: 'hello03')