# You are given array of integers, your task will be to count all pairs in that array and return their count.
# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

=begin

input: Array of Integers
output: Integer
explicit rules:
- given an Array of Integers and I must return the count of all pairs of numbers in the Array
- if Array is empty or contains no pairs then return 0
- there can be multiple pairs of the same numbers, ex: 0, 0, 0, 0
- range of values in the array is between 0 and 1000
Database: Hash
- set a local variable counts to an empty hash
- start a loop that iterates through the argument Array
  - in the counts hash set a key to the current number and the count of the current number in the argument array as a value
- end loop
- set a local variable pairs_count to 0
- start a loop that iterates through the keys and values in the counts hash
   - if the value is divisible by 2
    - set pairs_count to its current value plus the result of dividing the value by 2
- end loop
- return pairs_count
=end

def pairs(array)
  counts = {}
  array.each { |number| counts[number] = array.count(number) }
  pairs_count = 0
  counts.each { |key, value| pairs_count += (value / 2) if value.divmod(2)[0] > 0 }
  pairs_count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0