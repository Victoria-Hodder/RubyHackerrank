multiply_function = -> (number) do
  -> (another_number) do
      number * another_number
  end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

puts doubler.(4)
puts tripler.(4)

######

minus_function = -> (number) do
  -> (another_number) do
    number - another_number
  end
end

initial_value = minus_function.(33)

p initial_value.(3)

#######

add = -> (a, b) { a + b }
add_one = add.curry.(1)
add_two = add.curry.(2)

p add_one.(3)
p add_two.(3)
