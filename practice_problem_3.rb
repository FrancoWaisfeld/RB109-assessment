# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:



# The tests above should print "true".

=begin
input: string
output: string
explicit rules:
- write a method named to_weird_case
- take a String as an argument
- return the same string with every 2nd character in every third word converted to uppercase.
- other characters should remain the same
implicit rules:
- a word is any sequence of characters seperated by a space.
- if the word is one character long then it will remain unchanged
Database: Array
Algorithm:
- start a loop that iterates through the words in the argument string and the index
  - if the index plus one is divisible by 3
    - if the current word is longer than 1 character
      - start a loop that iterates through the letters and indexes of the current word
        - assign every letter with an odd index to an uppercased version of itself.
      - end loop
- end loop
=end

def to_weird_case(string)
  weird_case_words = []
  string.split.each_with_index do |word, index|
    if ((index + 1) % 3 == 0) && (word.size >= 2)
      current_weird_word = ''
      word.split('').each_with_index do |letter, index2|
        letter = letter.upcase if index2.odd?
        current_weird_word << letter
      end
      weird_case_words << current_weird_word
    else
      weird_case_words << word
    end
  end
  weird_case_words.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'