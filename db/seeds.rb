# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["chinese", "italian", "japanese", "french", "belgian"]
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0123456789',
    category:     "japanese"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0123456789',
    category:     "italian"
  },
  {
    name:         'Mamma Roma',
    address:      'Oberkampf',
    phone_number: '0123456789',
    category:     "italian"
  },
  {
    name:         "Barbue d'anvers",
    address:      'Lille',
    phone_number: '0123456789',
    category:     "belgian"
  },
  {
    name:         'Nihao',
    address:      'Paris',
    phone_number: '0123456789',
    category:     "chinese"
  },
  {
    name:         'Le bonjour',
    address:      'Perpette-les-oies',
    phone_number: '0123456789',
    category:     "french"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
