# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5
# below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# If the number is a multiple of both 3 and 5, only count it once.

=begin
input: integer
output: integer
explicit rules:
- given an Integer
- return the sum of all multiples of 3 or 5 that are less than the integer passed in
- if the argument Integer is negative return 0
- if a number is a multiple of both 3 and 5 then only count it once
Database: Array
Alogorithm:
- return 0 if the arugment Integer is less than 0
- set a local variable mutliples_3_or_5 to an empty Array
- start a loop that iterates from 0 up to 1 less than the argument Integer
  - if the current number is divisble by 3 or 5 then add it to the multiples_3_or_5 Array
- end loop
- return the sum of multples_3_or_5 Array

=end

def multiples_3_or_5_sum(number)
  return 0 if number < 0
  multiples_3_or_5 = []
  0.upto(number - 1) do |num|
    multiples_3_or_5 << num if (num % 3 == 0) || (num % 5 == 0)
  end
  multiples_3_or_5.sum
end

p multiples_3_or_5_sum(10) == 23
p multiples_3_or_5_sum(20) == 78
p multiples_3_or_5_sum(200) == 9168
