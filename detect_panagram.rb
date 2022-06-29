# A pangram is a sentence that contains every single letter of the alphabet at least once. 
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
# because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

=begin
input: String
output: Boolean
explicit rules:
- a panagram is a sentence that contains every letter of the alphabet at least once
- given a string return true if it is a panagram and false otherwise
- the panagram is not case sensitive
- ignore numbers and punctuation
Database: Array
Algorithm:
- set a local variable alphabet to an Array of the letter in the alphabet
- start a loop that iterates through the letters in the argument String
  - delete the lowercase version of the current letter from the alphabet Array
- end loop
- return whether or not alphabet Array is empty

=end

def pangram?(string)
  alphabet = ('a'..'z').to_a
  string.chars.each { |character| alphabet.delete(character.downcase) }
  alphabet.empty?
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
p pangram?("Two driven jocks help fax my big quiz.") == true
