# Write the method count_multibyte_char which takes a string as input 
# and returns the number of multibyte characters (byte size > 1) in it.

# For example:
# > count_multibyte_char('¥1000')
# 1

# https://www.hackerrank.com/challenges/ruby-strings-iteration/problem

def count_multibyte_char(string)
  byte_count = 0
  string.each_char { |char| byte_count += 1 if char.bytesize > 1 }
  return byte_count
end

puts count_multibyte_char("Hello")
puts count_multibyte_char("Absatz § 1")


