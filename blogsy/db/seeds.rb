# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   seed your development database with five users, each with a random number of posts.
    5.times do
      user = User.create(
        username: Faker::Name.name,
        email: Faker::Internet.email
        )
      rand(1..9).times do
        post = Post.create(
          title: Faker::Hacker.noun,
          body:  Faker::Hacker.say_something_smart,
          user:  user
        )
        rand(1..4).times do
          comment = Comment.new(
             body: Faker::Hacker.say_something_smart,
             user: user
          )
          post.comments << comment
        end
      end
    end
