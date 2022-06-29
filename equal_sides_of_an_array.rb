# You are going to be given an array of integers. Your job is to take that array 
# and find an index N where the sum of the integers to the left of N is equal to 
# the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, 
# the sum of left side of the index ({1,2,3}) and the sum of the right side of the 
# index ({3,2,1}) both equal 6.

# You are given the array {1,100,50,-51,1,1}:
# Your function will return the index 1, because at the 1st position of the array, 
# the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

=begin
input: Array
output: Integer
explicit rules:
- you are given an Array of Integers
- find the index where the sum of Integers to the left of the index and to the right of the index are equal
- if there is no index that would make this happen, return -1
implicit rules
- an empty Array can be used (ex: to the left of index 0) and the value of the empty Array would be 0
- if there is more than one valid index, pick the first index.
database: Array
algorithm:
- set a local variable even_sum_index to -1
- start a loop that iterates through the indexes of the argument Array
  - if the sum of numbers to the left of the current index is equal to the sum of the number to the right of the current index
    - if even_sum_index equals -1 set even_sum_index to the current index
- end loop
- return even_sum_index
=end

def find_even_index(array)
  even_sum_index = -1
  array.each_index do |index|
    if array[0,index].sum == array[index + 1, array.size].sum
      even_sum_index = index if even_sum_index == -1
    end
  end
  even_sum_index
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 # "Should pick the first index if more cases are valid")
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
