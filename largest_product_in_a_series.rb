# Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

# For example:

# greatestProduct("123834539327238239583") // should return 3240
# The input string always has more than five digits.

=begin
input: String
output: Integer
explicit rules:
- find the greatest product of five consectuive digits in the given string of digits
implicit rules:
- none
Database: Array
Algorithm:
set a local variable largest_product to 0
set a local variable numbers to an Array of the characters in the argument String
start a loop that iterates through the indexes in the argument String
  set a local variable next_5_digits to an Array containing the characters in numbers Array starting at the current index and of 5 elements in length.
  break out of the loop if next_5_digits contains less than 5 elements
  set a local variable next_5_digits_product to 1
  start a loop that iterates through next_5_digits_product
    set next_5_digits_product to the product of next_5_digits_product and the current number
  end loop
  if the product next_5_digits_product greater than largest_product then set largest_product to next_5_digits_product
end loop
return largest_product
  
=end

def greatest_product(string)
  largest_product = 0
  numbers = string.chars
  numbers.each_index do |index|
    next_5_digits = numbers[index, 5]
    break if next_5_digits.size < 5
    next_5_digits_product = 1
    next_5_digits.each {|num| next_5_digits_product *= num.to_i }
    largest_product = next_5_digits_product if next_5_digits_product > largest_product
  end
  largest_product
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("123834539327238299999") == 59049
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
