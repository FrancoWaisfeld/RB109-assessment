# given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.
# The input string consists of lowercase latin letters.
# Your function should return : an array [t, k]

=begin

input: String
output: Array
explicit rules:
- given a nonempty string
- find the smallest substring that can be repeated to equal the argument String
- return the smallest substring and the amount of times it must be repeated in an Array
- the input string only contains lowercase letters
implicit rules:
- if there is not substring that repeated will equal the argument string then return an Array consistng of the argument String and an Integer representing it was only repeated 1 time
Database: Array
Algorithm:
- set a local variable substring_length to 1
- start a loop that iterates until substring_length is greater than the lenght of the argument string
  - set a local variable substring to the letters in the argument String starting at the the first letter and of length subtring_length
  - set a local variable repeated_count to lenght of the argument string divided by the length of the subtring
  - if the product of substirng and repeated count is equal to the argument String
    - then return an Array consisting of the subtring and repeated count
  - add 1 to substring_length
- end loop

=end

def repeated(string)
  substring_length = 1
  until substring_length > string.length
    substring = string[0, substring_length]
    repeated_count = string.size / substring.size
    return [substring, repeated_count] if substring * repeated_count == string
    substring_length += 1
  end
end

p repeated("ababab") == ['ab', 3]
p repeated("abababab") == ['ab', 4]
p repeated("abcde") == ['abcde', 1]
