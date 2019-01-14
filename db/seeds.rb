# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do |n|
  Quote.create(body: Faker::BackToTheFuture.quote, source: "Back to the future", author: Faker::BackToTheFuture.character)
  Quote.create(body: Faker::DrWho.quote, source: "Dr Who", author: Faker::DrWho.character)
  Quote.create(body: Faker::DumbAndDumber.quote, source: "Dumb and dumber", author: Faker::DumbAndDumber.character)
  Quote.create(body: Faker::FamilyGuy.quote, source: "Back to the future", author: Faker::FamilyGuy.character)
end

Quote.all.each do |quote|
  rand(20).times do |x|
    quote.comments.create(body: Faker::Lorem.sentence)
  end
end
