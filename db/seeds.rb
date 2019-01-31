# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
5.times do
  user = User.create!(name: Faker::HarryPotter.character)
end

require 'faker'
5.times do
  lien = Lien.create!(user_id: rand(1..5), http: Faker::HarryPotter.spell)
end

require 'faker'
10.times do
  com = Commentaire.create!(user_id: rand(1..5), lien_id: rand(1..5), content: Faker::HarryPotter.quote)
end

require 'faker'
20.times do
  com = Comdecom.create!(user_id: rand(1..5), commentaire_id: rand(1..10), content: Faker::HarryPotter.house)
end