# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin
input: Array of numbers
output: Array of numbers
explicit rules:
- You are given an Array of numbers
- For each number record how many numbers in the Array are smaller than it
- Only count unique values. If a number occurs multiple times, count it once.
implicit rules:
- Return an Array of numbers. The numbers represent the count of numbers that were smaller than the number in the same index position of the arugment Array.\
- The returned Array will always have the same number of elements as the argument Array
Database: Array
Algorithm:
- set a local variable non_repeating_numbers to an Array that consists of only unique values from the argument Array
- set a local variable smaller_than_counts to an empty Array
- start a loop that iterates through the argument Array
  - set a local variable smaller_count to 0
  - start a loop that iterates through the non_repeating_numbers Array
    - if the element from the first loop is greater than the element from the second loop, 
      then set smaller_count to 1 greater than its current value
  - end inner loop
  - add smaller_count to the smaller_than_counts Array
- end outer loop
- return smaller_than_counts
=end

def smaller_numbers_than_current(array)
  non_repeating_numbers = array.uniq
  smaller_than_counts = []
  array.each do |number1|
    smaller_count = 0
    non_repeating_numbers.each do |number2|
      smaller_count += 1 if number1 > number2
    end
    smaller_than_counts << smaller_count
  end
  smaller_than_counts
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
