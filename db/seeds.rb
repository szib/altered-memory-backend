# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = []
10.times do |i|
  result = {
    name: Faker::JapaneseMedia::OnePiece.character,
    score: (i+1) * 100,
    time: (100 - (10 * i))
  }
  data << result
end
Result.create(data)