require "pry"

# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
# squared = 385
#
# sum of the squares = 385
# square of the sums = 3025
#
# difference between = 2640
#
# find the difference of between the sum of the squares and the square of the sums
# in the first 100 natual numbers.

numbers = (1..100).to_a
sum_of_square = 0
sum = 0
numbers.each do |num|
  sum = sum + num
  sum_of_square = sum_of_square + (num ** 2)
  binding.pry
end

puts (sum ** 2) - sum_of_square
