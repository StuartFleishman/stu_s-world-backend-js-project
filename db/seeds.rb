# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


john = User.create(name: "stuart")
firstComment = Comment.create(text: "hey now", user_id: 1)



g = GameScore.create(score: 1, user_id: 1)