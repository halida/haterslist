# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: 'admin', email: 'admin@haterslist.org', password: SecureRandom.hex(10))
guest = User.create(name: 'guest', email: 'guest@haterslist.org', password: SecureRandom.hex(10))

data = [
  {id: 1, description: "Govenment"},
  {id: 2, description: "My Mum"},
  {id: 3, description: "My Boss"},
]
Items.create(data)

