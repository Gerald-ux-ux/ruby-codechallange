# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Rest1= Restaurant.create(name:'Pizza_inn', address: "Nairobi")
Rest2= Restaurant.create(name:'Dominos', address: "Nairobi")

Piz1= Pizza.create(name:"haiwaian", ingredients:"juicefruits")
Piz2= Pizza.create(name:"bbq steak", ingredients:"bbq sauce")
Piz3= Pizza.create(name:"chicken-tikka", ingredients:"chicken")

RestaurantPizza.create(restaurant_id: Rest1.id, pizza_id: Piz2.id, price:40)
RestaurantPizza.create(restaurant_id: Rest2.id, pizza_id: Piz1.id, price: 12)
RestaurantPizza.create(restaurant_id: Rest1.id, pizza_id: Piz3.id, price: 11)