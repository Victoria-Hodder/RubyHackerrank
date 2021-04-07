arr = [1, 2, 3]

arr.map{ |i| i*3 }.map{ |i| i+3 }
# arr will be looped twice, since map is called one after one. 
# As we can see, this expression actually generates 2 results whenever map is called
# SOLUTION: Use Lazy
p arr.lazy.map{ |i| i*3 }.map{ |i| i+3 }.force

# https://github.com/ccniuj/tilap/issues/9


lazy = (1..Float::INFINITY).lazy.select(&:odd?).take_while { |i| i < 30 }
p lazy.first(10)
p lazy.to_a