require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a Store Name"
@response = gets.chomp.to_s

@new_store = Store.create(name: @response)
@new_store.save

@new_store.errors.each do |attr, msg|
  puts "#{attr} #{msg}"
end