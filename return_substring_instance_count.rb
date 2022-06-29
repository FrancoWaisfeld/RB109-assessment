# Complete the solution so that it returns the number of times the search_text is found within the full_text.

=begin

input: two Strings
output: Integer
explicit rules:
- return the number of times a String occurs within another String
implicit rules:
- neither String will ever be empty
Database: Array
Algorithm:
---subtrings method---
- arguments provided are the String and the length of the substring as an Integer
- set a local variable characters to the characters in the argument String
- set a local variable all_subtrings to an empty Array
- start a loop that iterates through the indexes in characters Array
  - skip the current iteration if current index + Integer argument length > characters Array size
  - set a local variable current_substring to the string that is at the current index in the character array and is Integer argument length long
  - add current_substring to the all_substrings Array
- end loop
- return all_substrings Array

---solution method---
- set a local variable all_substrings to the result of callign the substrings method and passing it the arguments, full_text String and the lenght of the search_text String
- set a local variable search_text_count to 0
- start a loop that iterates through the all_substrings Array
  - if the current substring matches the search text then set search_text_count to its current value plus one
- end loop
- return serach_text_count

=end

def solution(full_text, search_text)
  all_substrings = substrings(full_text, search_text.size)
  search_text_count = 0
  all_substrings.each do |current_substring|
    search_text_count += 1 if current_substring == search_text
  end
  search_text_count
end

def substrings(full_text, substring_size)
  characters = full_text.chars
  all_substrings = []
  characters.each_index do |index|
    next if index + substring_size > characters.size
    all_substrings << characters[index, substring_size].join
  end
  all_substrings
end

p solution('aa_bb_cc_dd_bb_e', 'bb') == 2 
p solution('aaabbbcccc', 'bbb') == 1
p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1