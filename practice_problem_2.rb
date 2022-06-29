# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

=begin
input: Array of Integers
output: nil or an Integer
explicit rules:
- write a method
- take an array of integers as an argument
- return the minimum sum of 5 consecutive nubers in the array
- return nil if there are fewer than 5 elements in the array
Database: Array
Algorithm:
- return nil if the argument Array has less than 5 elements
- set a local variable minimum_consecutive_sum to an empty array
- start a loop that iterates through the indexes of the argument Array
  - set a local variable next_5_numbers to an Array consisting of the elements in the argument Array from the current index to the next 4 indexes.
  - if the next_5_numbers Array has 5 numberes
    then add the sum of the elements in the next_5_numbers Array to the minimum_consectuive_sum Array
- end loop
- return the smallest element in the minimum_consecutive_sum Array
=end

def minimum_sum(array)
  return nil if array.count < 5
  minimum_consecutive_sum = []
  array.each_index do |index|
    next_5_numbers = array[index..index + 4]
    minimum_consecutive_sum << next_5_numbers.sum if next_5_numbers.count == 5
  end
  minimum_consecutive_sum.min_by { |number| number }
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
