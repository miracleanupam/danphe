# For a number to be multiple of both 3 and 5,
# it needs to be a multiple of 15 (lcm of 3 and 5)
# so the solution boils down to first checking if
# the number is multiple of 15, then 5 or 3


def what_string_to_print(num)
  if num % 15 == 0
    return "FizzBuzz"
  elsif num % 5 == 0
    return "Buzz"
  elsif num % 3 == 0
    return "Fizz"
  else
    return "#{num}"
  end
end


for i in 1..100 
  puts what_string_to_print(i)
end

