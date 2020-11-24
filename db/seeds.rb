# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'



Article.destroy_all
User.destroy_all



10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: 'Qwerty'
  )
end
puts "10 Users created "

30.times do 
  article = Article.create(
    title: Faker::Job.title,
    content: Faker::Quotes::Shakespeare.as_you_like_it_quote, 
    user_id: rand(1..10)
  )
end
puts "30 Articles created "

