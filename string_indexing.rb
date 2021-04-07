# In this challenge, your task is to code a serial_average method which is described below:

#     It takes a fixed width string in format: SSS-XX.XX-YY.YY.
#     SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
#     It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
#     All numbers are rounded off to two decimal places.

# https://www.hackerrank.com/challenges/ruby-strings-indexing/problem


# requirements if I would like to convert the code to doubles using to_d
# require 'bigdecimal'
# require 'bigdecimal/util'

def serial_average(string)
  serial_number = string[0,3]
  first_decimal = string[4,5].to_f
  second_decimal = string[10,5].to_f
  average = (first_decimal + second_decimal) / 2
  rounded_average = average.round(2).to_s

  return "#{serial_number}-#{rounded_average}"

end

test_string = "123-45.67-12.34"

puts serial_average(test_string)