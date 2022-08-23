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

toto = User.create!(
  email: 'toto@example.com',
  password: 'azerty',
  first_name: 'toto',
  last_name: 'TOTO',
  address: 'rue des capucins',
  phone_number: '0601020304'
)

lyon = Airport.create!(name: "LYON ST EXUPERY", city_code: "69125")
roissy = Airport.create!(name: "ROISSY CDG", city_code: "95700")
nice = Airport.create!(name: "Nice Côte d'Azur", city_code: "06000")
marseille = Airport.create!(name: "Marignane", city_code: "13727")
nantes = Airport.create!(name: "Nantes Atlantique", city_code: "44340")
orly = Airport.create!(name: "Orly", city_code: "94310")

# brand = ["Airbus", "Boeing"]
# airbus = ["A320", "A380", "A350XWB"]
# boeing = ["737", "787", "777"]

Aircraft.create!(brand: "AIRBUS", model: "A320", airport: lyon, owner: toto, daily_price: 300000)
Aircraft.create!(brand: "BOEING", model: "787", airport: nice, owner: toto, daily_price: 400000)
Aircraft.create!(brand: "BOEING", model: "777", airport: marseille, owner: toto, daily_price: 200000)
