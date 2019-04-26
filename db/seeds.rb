# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    name: "shibao2",
    email: "shibao2@example.com",
    password: "shibaodayo2",
    admin: 'true'
)

20.times do |n|
  User.create!(
    name: "#{n}yamada",
    email: "#{n}yamada@example.com",
    password: "#{n}yamadadayo"
  )
end
