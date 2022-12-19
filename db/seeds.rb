# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
p "cars destroyed"
p"---------------------------"


p "creating seeds"
p "------------------------------------"

Car1 = Car.create(brand:'Peugeot1', model:'101', price:"120")
Car2 = Car.create(brand:'Peugeot2', model:'102', price:"130")
Car3 = Car.create(brand:'Peugeot3', model:'103', price:"160")
Car4 = Car.create(brand:'Peugeot4', model:'104', price:"130")
Car5 = Car.create(brand:'Peugeot5', model:'105', price:"170")
Car6 = Car.create(brand:'Peugeot6', model:'106', price:"180")

p "Seeds create"
