# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# The tests above should print "true".

=begin
input: array of integers
output: array of two integers
explicit rules:
- write a method
- take an array of integers as an argument
- return the two integers that are closest together in value
Database: Array
Algorithm:
- set a local variable pairs to an empty Array
- start a loop that iterates through the argument Array indexes
=end

def closest_numbers(array)
  lowest_pair = [array.max_by { |n| n }, array.min_by { |n| n }]
  array.each do |number|
    array.each do |number2|
      next if number == number2
      if (number - number2).abs < (lowest_pair[0] - lowest_pair[1]).abs
        lowest_pair = [number, number2]
      end
    end
  end
  lowest_pair
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
