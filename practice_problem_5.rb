# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:


# The tests above should print "true".

=begin
input: String
output: String
explicit rules:
- write a method
- take a String as an argument
- return the character that occurs least often in the String
- If there are multiple characters with equal lowest number of occurences then 
  return the one that occurs first in the string.
- counting characters is not case sensitive
implicit rules:
- return a lowercase string
Database: nested Arrays
- set a local variable letter_counts to an empty Array
- set the argument string to a lowercased version of itself
- start a loop that iterates through the characters in the argument String
  - add an Array consisting of the current character and the count of the current character in the argument String to the end of letter_counts Array
- end loop
- set a variable least_occuring_letter to an Array with a nested Array that contains a random letter and an integer that is 1 greater than the size of the arugment String
- start a loop that iterates through the letter_counts Array
  - if the second value of the current nested Array is less than the second value in the least_occuring_letter Array
    then assign least_occuring_letter to the current nested array
- end loop
- return the first value in the nested Array that is in least_occurring_letter Array
=end

def least_common_char(string)
  string.downcase!
  letter_counts = []
  string.chars.each do |character|
    letter_counts << [character, string.count(character)]
  end
  letter_counts.min_by { |letter, letter_count| letter_count }[0]
end


p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
