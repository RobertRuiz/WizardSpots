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
home = Category.find_or_create_by(name: "home")
other = Category.find_or_create_by(name: "other")
email = Category.find_or_create_by(name: "email")
finance = Category.find_or_create_by(name: "finance")
music = Category.find_or_create_by(name: "music")
calendar = Category.find_or_create_by(name: "calendar")

SpotTemplate.find_or_create_by(name: "Publix chicken tender sub").update_attributes(category: food, description: "Whole on Italian 5 Grain bread with Provolone cheese, Banana Peppers, Black Olives, Green Peppers, Lettuce, Onions, Spinach and Tomatoes")
SpotTemplate.find_or_create_by(name: "Oil change").update_attributes(category: automotive, description: "Schedule me for an oil change and tire rotation, added it to my calendar and send me confirmation and reminder Emails and texts")
SpotTemplate.find_or_create_by(name: "Facebook post").update_attributes(category: facebook, description: "Post my favorite Emoticon, or inspirational quote, etc.")
SpotTemplate.find_or_create_by(name: "I'm on my way text").update_attributes(category: messaging, description: "Leaving work now")
SpotTemplate.find_or_create_by(name: "Timesheets").update_attributes(category: calendar, description: "Timesheets - they’re a drag. This Wizard Spot will accurately records how much time you spend at a specific location, and then logs it to a Google Drive spreadsheet.")
SpotTemplate.find_or_create_by(name: "Facebook post").update_attributes(category: facebook, description: "Automatically update your Twitter profile when your Facebook profile changes.")
SpotTemplate.find_or_create_by(name: "Weather Alert").update_attributes(category: messaging, description: "Rain tomorrow? Send me text message.")
