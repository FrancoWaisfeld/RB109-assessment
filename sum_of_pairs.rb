# Given a list of integers and a single sum value, return the first two values 
# (parse from the left please) in order of appearance that add up to form the sum.

=begin
input: Array and Integer
output: Array
explicit rules:
- given an Array of Integers and a single integer
- return the first two values from the Array that sum to equal the Integer.
implicit rules:
- 'first' in the Array is determined by adding the indexes of the two values from the Array
- if there are no two values from the Array that sum to equal the Integer then return nil
Database: Array
algorithm
- set a local variable summed_pair to nil
- set a local variable summed_indexes to the sum of all elements in the argument Array
- start a loop that iterates through the element and index of the argument Array
  - start a loop that iterates through the element and index of the argument Array
    - next if outer index and inner index are equal
    - if the outer element + the inner element is equal to the integer argument
      - if summed_indexed is greater than the sum of the outer and inner indexes
        - set summed_pair to an Array of the outer element adn inner element
        - set summed_indexes to the sum of the outer and inner indexes
  - end inner loop
- end outer loop
- return summed_pair
=end

def sum_pairs(array, sum)
  summed_pair = nil
  largest_index = array.size + 10
  array.each_with_index do |number1, index1|
    array.each_with_index do |number2, index2|
      next if index1 == index2
      if number1 + number2 == sum
        if largest_index > [index1, index2].sort[-1]
          summed_pair = [number1, number2]
          largest_index = [index1, index2].sort[-1]
        end
      end
    end
  end
  summed_pair
end

p sum_pairs([11, 3, 7, 5], 10) == [3, 7]

p sum_pairs([0, 0, -2, 3], 2) == nil
#  there are no pairs of values that can be added to produce 2.

p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * entire pair is earlier, and therefore is the correct answer

p sum_pairs([10, 5, 2, 3, 7, 5],         10) == [3, 7]
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * entire pair is earlier, and therefore is the correct answer

p sum_pairs([0, 2, 0], 0) == [0, 0]

