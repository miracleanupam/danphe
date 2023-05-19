def horizontal
  return 0x2501.chr('UTF-8')
end

def vertical
  return 0x2503.chr('UTF-8')
end

def boxy(n)
  puts (" " + horizontal) * n
  puts horizontal * (2*n+1)
  middle_str = ''
  for i in 1..n
    middle_str += vertical + i.to_s
  end
  middle_str += vertical
  puts middle_str
  puts horizontal * (2*n+1)
  puts (" " + horizontal) * n
end

# Works for n = 1..9
# As the digits increase, the mathematical fit breaks, ie, for n >=10
boxy(5)
