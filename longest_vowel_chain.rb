# The vowel substrings in the word codewarriors are o,e,a,io. 
# The longest of these has a length of 2. Given a lowercase string that has 
# alphabetic characters only (both vowels and consonants) and no spaces, 
# return the length of the longest vowel substring. Vowels are any of aeiou.
=begin

input: String
output: Integer
explicit rules:
- given a lowercase String that only alphabetic characters and no spaces
- return the length of the longest vowel substring
- vowels are any of aeiou
Database: Array
Algorithm:
- create a constant LOWERCASE_VOWELS to an Array that contains all lowercase vowels
- set a local variable characters to the characters in the String argument
- set a local variable longest_vowel_count_streak = 0
- start a loop that iterates through the characters Array
  - set a local variable vowel_count_streak to 0
  - if the currenet character is in LOWERCASE_VOWELS array
    - add 1 to vowel_count_streak
  - if not
    - if vowel_count_streak > longest_vowel_count_streak
      - set longest_vowel_count_streak to vowel_count_streak
- end loop
- return longest_vowel_count_streak

=end

LOWERCASE_VOWELS = ['a', 'e', 'i', 'o', 'u']

def solve(string)
  longest_vowel_count_streak = 0
  vowel_count_streak = 0
  string.chars.each do |letter|
    if LOWERCASE_VOWELS.include?(letter)
      vowel_count_streak += 1
      if vowel_count_streak > longest_vowel_count_streak
        longest_vowel_count_streak = vowel_count_streak
      end
    else
      vowel_count_streak = 0
    end
  end
  longest_vowel_count_streak
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
