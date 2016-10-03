# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

food = Category.find_or_create_by(name: "food")
facebook = Category.find_or_create_by(name: "facebook")
messaging = Category.find_or_create_by(name: "messaging")
automotive = Category.find_or_create_by(name: "automotive")
Category.find_or_create_by(name: "home")
Category.find_or_create_by(name: "other")
Category.find_or_create_by(name: "email")
Category.find_or_create_by(name: "finance")
Category.find_or_create_by(name: "music")

SpotTemplate.find_or_create_by(name: "publix chicken tender sub", category: food, description: "qvce leqvervefl bc qreirivqriev iher  qerb irveriverq")
SpotTemplate.find_or_create_by(name: "Jimmy Johns Gargantuan", category: food, description: "qvce leqvervefl bc qreirivqriev iher  qerb irveriverq")
SpotTemplate.find_or_create_by(name: "Jiffy Lube", category: automotive, description: "qvce leqvervefl bc qreirivqriev iher  qerb irveriverq")
SpotTemplate.find_or_create_by(name: "Facebook post", category: facebook, description: "qvce leqvervefl bc qreirivqriev iher  qerb irveriverq")
SpotTemplate.find_or_create_by(name: "I'm on my way text", category: messaging, description: "Leaving work now")
