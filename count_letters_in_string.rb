# count lowercase letters in a given string and return the letter count in 
# a hash with 'letter' as key and count as 'value'. The key must be 'symbol' 
# instead of string in Ruby and 'char' instead of string in Crystal.

=begin
input: String
output: Hash with Symbols for keys and Integers for values
explicit rules:
- ONLY count lowercase letters in a given String
- return the letter count in a hash with the letters beign keys and the counts being the values.
- The keys must be symbols instead of Strings.
implicit rules:
- empty String returns and empty Hash
Database: Hash
Algorithm:
- set a constant variable lowercase_letters to an Array that contains all lowercase letters
- set local variable counts to an empty Hash
- start a loop that iterates through the characters in the argument String
  - if the characer of the current iteration is in the lowercase_letters Array
    - set a key in the counts Hash to be the character of the current iteration converted to a Symbol and the value to the count of the current character in the argument String
- end loop
- return counts Hash
=end

LOWERCASE_LETTERS = ('a'..'z').to_a

def letter_count(string)
  counts = {}
  string.chars.each do |character|
    counts[character.to_sym] = string.count(character) if LOWERCASE_LETTERS.include?(character)
  end
  counts
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('') == {}
p letter_count('Hello World') == {:e => 1, :l => 3 , :o => 2, :r => 1, :d => 1}
