require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'


@store1.employees.create(first_name: "Me", last_name: "Deffos-Me", hourly_rate: 150)
@store1.employees.create(first_name: "Test", last_name: "Testing", hourly_rate: 130)

puts @store1.employees.last.password