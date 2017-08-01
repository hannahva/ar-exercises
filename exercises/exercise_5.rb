require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)

puts @total_revenue

@avg_revenue = @total_revenue / Store.count

puts @avg_revenue

@big_boys = Store.where(["annual_revenue >= 1000000"]).count

puts @big_boys