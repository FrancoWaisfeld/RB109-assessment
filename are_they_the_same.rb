# Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) 
# that checks whether the two arrays have the "same" elements, with the same 
# multiplicities (the multiplicity of a member is the number of times it appears). 
# "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

# Valid arrays
# a = [121, 144, 19, 161, 19, 144, 19, 11]  
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
# comp(a, b) returns true because in b 121 is the square of 11, 14641 
# is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 
# the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:

# a = [121, 144, 19, 161, 19, 144, 19, 11] 
# b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
# Invalid arrays
# If, for example, we change the first number to something else, comp is not returning true anymore:

# a = [121, 144, 19, 161, 19, 144, 19, 11]  
# b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
# comp(a,b) returns false because in b 132 is not the square of any number of a.

# a = [121, 144, 19, 161, 19, 144, 19, 11]  
# b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
# comp(a,b) returns false because in b 36100 is not the square of any number of a.

# Remarks
# a or b might be [] or {} (all languages except R, Shell).
# a or b might be nil or null or None or nothing
# If a or b are nil (or null or None, depending on the language), the problem doesn't make sense so return false.

=begin
input: two Arrays
output: Boolean
explicit rules:
- given two ARrays a and b
- return true if the elements in b are equivalent to the elements a if they were squared
- order of elements does not matter
- if either Array is empty or nil return false
Database: Array
- if first_array or second_array are equal to empty or nil return false
- set a local variable first_array_squared to an empty Array
- start a loop that iterates through first_array
  - square the current element and add it to first_array_squared
- end loop
- sort first_array_squared
- sort second_array
- return true if first_array_squared is equal to second_array. false otherwise
=end

def comp(array1, array2)
  return false if array1.empty? || array2.empty? || array1 == nil || array2 == nil
  array1_squared = []
  array1.each { |num| array1_squared << num ** 2 }
  array1_squared.sort!
  array2.sort!
  array1_squared == array2
end
