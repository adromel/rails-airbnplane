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

owner1 = User.create!(email: 'françois.robino@gmail.com', password: 'azerty', first_name: 'François', last_name: 'Robino', address: '113 Av. Mozart, 75016 Paris', phone_number: '0601020304')
owner2 = User.create!(email: 'badoilflorian@gmail.com', password: 'azerty', first_name: 'Florian', last_name: 'Badoil', address: '13 Av. du Maréchal Juin, 13700 Marignane', phone_number: '0605060708')
owner3 = User.create!(email: 'alexandre.dromel@gmail.com', password: 'azerty', first_name: 'Alexandre', last_name: 'Dromel', address: '1 Pl. de la comédie, 69001 Lyon', phone_number: '0609101112')
user1 = User.create!(email: 'antoine.gros14@gmail.com', password: 'azerty', first_name: 'Antoine', last_name: 'Gros', address: '38 rue Professeur Weill', phone_number: '0613141516')
user2 = User.create!(email: 'joseph.blanchard@gmail.com', password: 'azerty', first_name: 'Joseph', last_name: 'Blanchard', address: '20 Rue des Capucins', phone_number: '0617181920')
user3 = User.create!(email: 'benjamin.boisson@gmail.com', password: 'azerty', first_name: 'Benjamin', last_name: 'Boisson', address: '20 Rue des Capucins', phone_number: '0621222324')

nice = Airport.create!(name: "Aéroport Nice Côte d'Azur", city_code: "06000")
marseille = Airport.create!(name: "Aéroport Marseille Provence", city_code: "13727")
nantes = Airport.create!(name: "Aéroport Nantes Atlantique", city_code: "44340")
lyon = Airport.create!(name: "Aéroport de Lyon-Saint Exupéry", city_code: "69125")
orly = Airport.create!(name: "Aéroport de Paris-Orly", city_code: "94310")
roissy = Airport.create!(name: "Aéroport de Paris-Charles de Gaulle", city_code: "95700")

brand = ["Airbus", "Boeing"]
airbus = ["A220", "A319", "A319neo", "A320", "A320neo", "A321", "A330", "A330neo", "A350"]
boeing = ["B717", "B737", "B737 MAX", "B747", "B757", "B767"]

a320 = Aircraft.create!(brand: "AIRBUS", model: "A320", airport: roissy, owner: owner1, daily_price: 300000)
a320.photo.attach(io: File.open("./public/images/Airbus_A320-271N_NEO_D-AVVA.jpg"), filename: 'Airbus_A320-271N_NEO_D-AVVA.jpg')
a3202 = Aircraft.create!(brand: "AIRBUS", model: "A320", airport: marseille, owner: owner2, daily_price: 285000)
a3202.photo.attach(io: File.open("./public/images/Airbus_A320-271N_NEO_D-AVVA.jpg"), filename: 'Airbus_A320-271N_NEO_D-AVVA.jpg')
a3203 = Aircraft.create!(brand: "AIRBUS", model: "A320", airport: lyon, owner: owner3, daily_price: 275000)
a3203.photo.attach(io: File.open("./public/images/Airbus_A320-271N_NEO_D-AVVA.jpg"), filename: 'Airbus_A320-271N_NEO_D-AVVA.jpg')
a220 = Aircraft.create!(brand: "AIRBUS", model: "A220", airport: roissy, owner: owner1, daily_price: 250000)
a220.photo.attach(io: File.open("./public/images/Airbus_A220-300.jpg"), filename: 'Airbus_A220-300.jpg')
a2202 = Aircraft.create!(brand: "AIRBUS", model: "A220", airport: marseille, owner: owner2, daily_price: 235000)
a2202.photo.attach(io: File.open("./public/images/Airbus_A220-300.jpg"), filename: 'Airbus_A220-300.jpg')
b7472 = Aircraft.create!(brand: "BOEING", model: "B747", airport: marseille, owner: owner2, daily_price: 180000)
b7472.photo.attach(io: File.open("./public/images/B747.jpg"), filename: 'B747.jpg')
b7473 = Aircraft.create!(brand: "BOEING", model: "B747", airport: lyon, owner: owner3, daily_price: 170000)
b7473.photo.attach(io: File.open("./public/images/B747.jpg"), filename: 'B747.jpg')
b7572 = Aircraft.create!(brand: "BOEING", model: "B757", airport: marseille, owner: owner2, daily_price: 200000)
b7572.photo.attach(io: File.open("./public/images/B757.jpg"), filename: 'B757.jpg')
b7573 = Aircraft.create!(brand: "BOEING", model: "B757", airport: lyon, owner: owner3, daily_price: 190000)
b7573.photo.attach(io: File.open("./public/images/B757.jpg"), filename: 'B757.jpg')

Booking.create!(user_id: user1.id, aircraft_id: a320.id, start_on: "2022-08-23", end_on: "2022-08-24")
Booking.create!(user_id: user1.id, aircraft_id: b7572.id, start_on: "2022-08-25", end_on: "2022-08-25")
Booking.create!(user_id: user3.id, aircraft_id: a3202.id, start_on: "2022-08-26", end_on: "2022-08-27")
