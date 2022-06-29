# Write a function that will return the count of distinct case-insensitive alphabetic characters 
# and numeric digits that occur more than once in the input string. 
# The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

=begin
input: string
output: integer
explicit rules:
- write a method
- return the count of case-insensitive alphanumeric characteres that occur more than once in the input string
- the input string will contain only alphanumeric characters
Database: Array
algorithm:
- set a local variable characters to an Array of the lower-cased characters in the argument String
- set a local variable count_of_duplicates to 0
- start a loop that iterates through the characters array
  - set count_of_duplicates to one greater than its current value if the current letter occurs more than once in characters Array
- end loop
 -return count_of_duplicates
=end

def duplicate_count(string)
  string.downcase!
  characters = string.chars
  count_of_duplicates = 0
  characters.each do |character|
    count_of_duplicates += 1 if string.count(character) > 1
    string.delete!(character)
  end
  count_of_duplicates
end

p duplicate_count("abcde") == 0 # no characters repeats more than once
p duplicate_count("aabbcde") == 2 # 'a' and 'b'
p duplicate_count("aabBcde") == 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
p duplicate_count("indivisibility") == 1 # 'i' occurs six times
p duplicate_count("Indivisibilities") == 2 # 'i' occurs seven times and 's' occurs twice
p duplicate_count("aA11") == 2 # 'a' and '1'
p duplicate_count("ABBA") == 2 # 'A' and 'B' each occur twice
