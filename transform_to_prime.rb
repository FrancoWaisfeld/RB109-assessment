def is_prime?(num)
  (2..(num - 1)).each do |n|
    return false if num % n == 0
  end
  true
end

def minimum_number(array)
  prime_numbers = [1]
  iterator = 2
  
  until prime_numbers[-1] >= array.sum
    prime_numbers << iterator if is_prime?(iterator)
    iterator += 1
  end

  sum = array.sum
  distance_to_prime_number = sum
  prime_numbers.reverse.each do |number|
    if number - sum < distance_to_prime_number && number - sum >= 0
      distance_to_prime_number = number - sum
    end
  end
  distance_to_prime_number
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
