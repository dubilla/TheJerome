# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Round.create(name: 'First Round', order: 1)
Round.create(name: 'Second Round', order: 2)
Round.create(name: 'Quarterfinals', order: 3)
Round.create(name: 'Semifinals', order: 4)
Round.create(name: 'Finals', order: 5)
Round.create(name: 'Champion', order: 6)
