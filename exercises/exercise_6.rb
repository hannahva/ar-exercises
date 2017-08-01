require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Hannah", last_name: "van Adrichem", hourly_rate: 14)
@store1.employees.create(first_name: "Madeline", last_name: "Collier", hourly_rate: 14)
@store1.employees.create(first_name: "Zola", last_name: "McAdie", hourly_rate: 14)

@store2.employees.create(first_name: "Halloween", last_name: "Cat", hourly_rate: 12)
@store2.employees.create(first_name: "Becca", last_name: "Louw", hourly_rate: 14)
@store2.employees.create(first_name: "Hazen", last_name: "Price", hourly_rate: 15)