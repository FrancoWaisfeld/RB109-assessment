# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.

# The tests contain some very huge arrays, so think about performance.

=begin
input: Array
output: Integer
explicit rules:
- you are given an Array of numberes
- all numbers except for one are equal
- return the number that is not equal
implicit rules:
- the numbers in the argument Array can be an integer or float
Database: Array
algorithm:
- set a local variable unique_elements to the argument Array with each element only repeated once
- start a loop that iterates through unique_elements
  - if the count of the current number in the argument Array is 1
    - then return the current number
- end loop
=end

def find_uniq(array)
  unique_elements = array.uniq
  unique_elements.each { |element| return element if array.count(element) == 1 }
end

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
