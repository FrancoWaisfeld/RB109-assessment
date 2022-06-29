# Given a string of integers, return the number of odd-numbered substrings that can be formed.
# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

=begin

input: String
output: Integer
explicit rules:
- given a String of Integers
- return the number of odd-numbered substrings that can be formed.
implicit rules:
- an odd-numbered substring can repeat: ex 11 would have odd numbers 1, 1, 11
- you cannot re-order the substring. ex: 1341 does not contain 31
Database: Array
Algorithm:
- set a local variable max_substring_length to the length of the argument String
- set a local variable odd_substrings_count to 0
- start a loop that iterates through the indexes of the argument String
  - set a local variable substring_length to 1
  - start a loop that iterates until substring_length + current index is equal to max_substring_length
    - if the substring starting at the position of index with a length of substring_length is odd
        - then add 1 it to the odd_substrings_count local variable
    - add 1 to substring length
  - end loop
- end loop
return odd_substrings_count

=end

def solve(string)
  max_substring_length = string.size
  odd_substrings_count = 0
  characters = string.chars

  characters.each_index do |index|
    substring_length = 1
    until substring_length + index > max_substring_length
      odd_substrings_count += 1 if characters[index, substring_length].join.to_i.odd?
      substring_length += 1
    end
  end

  odd_substrings_count
end

p solve("1341") == 7
p solve("1357") == 10 
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28