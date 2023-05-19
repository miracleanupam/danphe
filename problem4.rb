MAPPINGS = {0 => '0', 1=> '1', 2=> '2', 3=> '3', 4=>'4', 5=> '5', 6=> '6', 7=> '7', 8=> '8', 9=> '9', 10=> 'A', 11=> 'B', 12=> 'C', 13=> 'D', 14=> 'E', 15=> 'F', 'F'=> 15, 'E'=> 14, 'D'=> 13, 'C'=>12, 'B'=> 11, 'A'=> 10, '9'=>9, '8'=> 8, '7'=> 7, '6'=> 6, '5'=> 5, '4'=> 4, '3'=> 3, '2'=> 2, '1'=> 1, '0'=> 0}

def get_base(system)
 case system
  when 'binary'
    base = 2
  when 'octal'
    base = 8
  when 'hexa'
    base = 16
  else
    raise "Invalid number system, has to be one of 'binary', 'octal', or 'hexa'"
  end
  return base
end
  

def convert_from_decimal(num, to)
  base = get_base(to) 

  rems = ''
  loop do
    r = num % base
    rems += MAPPINGS[r]
    num /= base
    break if num == 0
  end
  return rems.reverse
end

def convert_to_decimal(num, from)
  base = get_base(from)
  num = num.to_s
  
  i = 0
  sum = 0
  for n in num.reverse.chars
    num_val = MAPPINGS[n]
    sum += num_val * base ** i
    i += 1
  end
  return sum
end

def convert_number(number, from, to)
  if from == 'decimal'
    return convert_from_decimal(number, to)
  elsif to == 'decimal'
    return convert_to_decimal(number, from)
  else
    decimal_val = convert_to_decimal(number, from)
    return convert_from_decimal(decimal_val, to)
  end
end


puts convert_number(34, 'octal', 'hexa')
puts convert_number(1001111001, 'binary', 'hexa')
puts convert_number(456, 'octal', 'binary')
puts convert_number('FE', 'hexa', 'binary')
puts convert_number('A2', 'hexa', 'octal')
puts convert_number(111101, 'binary', 'octal')
