# Complete the function scramble(str1, str2) that returns true if a portion of 
# str1 characters can be rearranged to match str2, otherwise returns false.
# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.

=begin
input: two Strings
output: Boolean
explicit rules:
- return true if a portion of hte first string can be rearranged to match string2 other false
- only lowercase letters will be used in both strings.
Database: Array
Algorith:
- set letters_in_string1 to an Array of the characters in letters_in_string1
- set letters_in_string2 to an Array of the characters in letters_in_string2
- start a loop that iterates through the characters in letters_in_string2
  - return false if the current character is not in letters_in_string1
- end loop
- return true
=end

def scramble(string1, string2)
  letters_in_string1 = string1.chars
  letters_in_string2 = string2.chars

  letters_in_string2.each do |letter|
    return false unless letters_in_string1.include?(letter)
  end
  return true
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
