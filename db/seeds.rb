# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "todd@example.com", password: "password", password_confirmation: "password", first_name: "todd", last_name: "example", house_id: 1, points: 0)
User.create!(email: "kiya@example.com", password: "password", password_confirmation: "password", first_name: "kiya", last_name: "example", house_id: 1, points: 0)
User.create!(email: "jason@example.com", password: "password", password_confirmation: "password", first_name: "jason", last_name: "example", house_id: 1, points: 0)
User.create!(email: "john@example.com", password: "password", password_confirmation: "password", first_name: "john", last_name: "example", house_id: 2, points: 0)

Home.create!(user_id: 1, addr_number: 2345, addr_street: "First Drive Lane", addr_unit: "56", addr_city: "Pine Hills", addr_state: "FL", addr_zip: 34420, home_type: "house")
Home.create!(user_id: 4, addr_number: 678, addr_street: "Second Drive Lane", addr_unit: "A5", addr_city: "Bollywood Hills", addr_state: "CO", addr_zip: 85547, home_type: "apartment")

Room.create!(name: "kitchen", home_id: 1, floor: 1, room_type: "kitchen", privacy: "shared")
Room.create!(name: "bathroom", home_id: 1, floor: 1, room_type: "full bathroom", privacy: "shared")
Room.create!(name: "bathroom", home_id: 1, floor: 2, room_type: "full bathroom", privacy: "shared")
Room.create!(name: "main room", home_id: 1, floor: 1, room_type: "living room", privacy: "shared")
Room.create!(name: "Todd & Kiya's Room", home_id: 1, floor: -1, room_type: "kitchen", privacy: "private")
Room.create!(name: "Jason's Room", home_id: 1, floor: -1, room_type: "kitchen", privacy: "private")

Chore.create!(title: "clean fridge", desc: "pull out all the drawers", frequency: 720, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 1, currently_assigned: true)
Chore.create!(title: "mop floors", desc: "mop around the toilet", frequency: 48, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 2, currently_assigned: true)
Chore.create!(title: "take out trash", desc: "dont forget to put it in the right place", frequency: 24, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 1, currently_assigned: true)
Chore.create!(title: "Dishes", desc: "make sure you clean all of the food off the plates before loading in dishwasher", frequency: 24, last_completed: 1.day.ago, points_gain: 50, points_price: 150, room_id: 1, currently_assigned: true)

Assignment.create!(chore_id: 1, user_id: 1, due_date: 1.day.ago, completed_date: 3.days.ago, assigner_id: 2)
Assignment.create!(chore_id: 2, user_id: 1, due_date: 1.day.ago, completed_date: 2.days.ago, assigner_id: 1)
Assignment.create!(chore_id: 3, user_id: 2, due_date: 1.day.ago, assigner_id: 1)