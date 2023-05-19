def count_occurence_of_chars(input_string)
  # convert the string to upcase or downcase so that both 'A' and 'a'
  # are treated as the same char
  input_string.downcase!

  # get the unique chars from the string
  unique_chars = input_string.split('').uniq

  # remove the whitespace from the array of unique chars
  unique_chars.delete(' ')

  # initialize new hash to store char count in input string
  counts = Hash.new

  for ch in unique_chars
    counts.merge!({ "#{ch}": input_string.count(ch) })
  end

  return counts
end


test_string = "This is a test string"
puts count_occurence_of_chars(test_string)
