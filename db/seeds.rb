# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Aircraft.destroy_all
Airport.destroy_all
User.destroy_all

owner1 = User.create!(email: 'toto@example.com', password: 'azerty', first_name: 'toto', last_name: 'TOTO', address: 'rue des capucins', phone_number: '0601020304')
owner2 = User.create!(email: 'tata@example.com', password: 'azerty', first_name: 'tata', last_name: 'TATA', address: 'rue des capucins', phone_number: '0601020304')
owner3 = User.create!(email: 'titi@example.com', password: 'azerty', first_name: 'titi', last_name: 'TITI', address: 'rue des capucins', phone_number: '0601020304')
user1 = User.create!(email: 'fofo@example.com', password: 'azerty', first_name: 'fofo', last_name: 'FOFO', address: 'rue des capucins', phone_number: '0601020304')
user2 = User.create!(email: 'fafa@example.com', password: 'azerty', first_name: 'fafa', last_name: 'FAFA', address: 'rue des capucins', phone_number: '0601020304')
user3 = User.create!(email: 'fifi@example.com', password: 'azerty', first_name: 'fifi', last_name: 'FIFI', address: 'rue des capucins', phone_number: '0601020304')


lyon = Airport.create!(name: "LYON ST EXUPERY", city_code: "69125")
roissy = Airport.create!(name: "ROISSY CDG", city_code: "95700")
nice = Airport.create!(name: "Nice Côte d'Azur", city_code: "06000")
marseille = Airport.create!(name: "Marignane", city_code: "13727")
nantes = Airport.create!(name: "Nantes Atlantique", city_code: "44340")
orly = Airport.create!(name: "Orly", city_code: "94310")

# brand = ["Airbus", "Boeing"]
# airbus = ["A320", "A380", "A350XWB"]
# boeing = ["737", "787", "777"]

a320 = Aircraft.create!(brand: "AIRBUS", model: "A320", airport: lyon, owner: User.find(1), daily_price: 300000)
b787_2 = Aircraft.create!(brand: "BOEING", model: "787", airport: nantes, owner: User.find(1), daily_price: 300000)
b787 = Aircraft.create!(brand: "BOEING", model: "787", airport: nice, owner: User.find(2), daily_price: 400000)
b777 = Aircraft.create!(brand: "BOEING", model: "777", airport: marseille, owner: User.find(3), daily_price: 200000)

Booking.create!(user_id: user1.id, aircraft_id: a320.id, start_on: "2022-08-23", end_on: "2022-08-24")
Booking.create!(user_id: user1.id, aircraft_id: b777.id, start_on: "2022-08-25", end_on: "2022-08-25")
Booking.create!(user_id: user2.id, aircraft_id: a320.id, start_on: "2022-08-26", end_on: "2022-08-27")
