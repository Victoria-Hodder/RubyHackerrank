require 'bigdecimal'
require 'bigdecimal/util'

# puts BigDecimal("1.0") / BigDecimal("0.0")
# => Infinity

first_double = "4.5".to_d
puts first_double
second_double = "2.3".to_d
double_average = (first_double + second_double) / 2
puts double_average

first_decimal = 4.5
second_decimal = 2.3
decimal_average = (first_decimal + second_decimal) / 2
puts decimal_average

d = BigDecimal("3.14")
d.to_d
puts d
