# count lowercase letters in a given string and return the letter count in 
# a hash with 'letter' as key and count as 'value'. The key must be 'symbol' 
# instead of string in Ruby and 'char' instead of string in Crystal.

=begin
input:string
output: Hash
explicit rules
- count lowercase letters in a given string
- return the letter count in a hash with letter as key adn count as value
- keys must be sumbols instead of strings
Database: Array and Hash
algorithm:
- set a local variable lower_letters_counts to a Hash with a default value of 0
- start a loop that iterates through the letters in the argumetn String
  - convert the current letter to a symbol and add it as a key to the lower_lettesr_count hash. The value is the current value plus 1
- end loop
- return the lower_letters_count Hash

=end

def letter_count(string)
  lower_letters_count = Hash.new(0)
  string.chars.each do |letter|
    lower_letters_count[letter.to_sym] += 1
  end
  lower_letters_count
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
