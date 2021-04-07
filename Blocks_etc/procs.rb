t = Proc.new { |x,y| puts "I don't care about arguments!" }
t.call

x = Proc.new {|x,y| puts x*y}
x.call(2,4)

def foo (a, b, my_proc)
  my_proc.call(a, b)
end

add = proc { |x, y| x + y }

puts foo(15, 10, add)

def check(&t)
	t.call #t is a Proc object
	puts t.class
end

p = Proc.new{puts "hello"}
check(&p) #passing block not proc


## Hackerrank Aufgabe ##

def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = -> (n) { n**2 } # converting proc to lambda for fun
proc_sum_array     = proc {|n| n.reduce(&:+) }
my_array = [1,2,3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
