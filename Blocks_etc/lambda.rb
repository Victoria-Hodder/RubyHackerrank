# Write a lambda which takes an integer and square it
square = ->(a) { a ** 2 }

# Write a lambda which takes an integer and increment it by 1
plus_one = ->(b) { b + 1 } 

# Write a lambda which takes an integer and multiply it by 2
into_2 = ->(c) { c * 2 }

# Write a lambda which takes two integers and adds them
adder = -> (x,y) { x + y }

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(f){f.values}

my_hash = { "a"=> 1, "b"=> 2, "c"=> 3}
e = values_only.(my_hash)
p e

###### Playing with curry ######

add_one = adder.curry.(1)
p add_one.(4)
