# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# Examples
# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

=begin

input: Array
output: Integer
explicit rules:
- given an Array of Integers
- find hte integer that appears an odd number of times in the Array
- There will always be on Integer that appears an odd number of times
implicit rules:
- only one number will occur an odd number of times in the argument Array
Database: Hash
algorithm:
- set a local variable number_occurence_count to a Hash with default values set to 0
- start a loop that iterates through the argument Array
  - add a key to the number_occurence_count Hash that is the current number and the value is the current value plus 1
- end loop
- start a loop that iterates through the keys and values of the number_occurence_count Hash
  - if the value is an odd number then return the key
- end loop

=end

def find_it(array)
  number_occurence_count = Hash.new(0)
  array.each { |number| number_occurence_count[number] += 1 }
  number_occurence_count.each { |key, value| return key if value.odd? }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10
