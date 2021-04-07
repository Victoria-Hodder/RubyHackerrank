
def one_yield
  yield
end

def multiple_yields
  yield
  yield
end

one_yield { puts "one yield" }

multiple_yields { puts "multiple yields" }

def yield_with_arguments
  hello = 'Hello'
  world = 'World!'
  yield(hello, world)
end

yield_with_arguments { |hello, world| puts "#{hello} #{world}" }

def multiply
  num1 = 3
  num2 = 3
  yield(num1, num2)
end

multiply do |num1, num2| 
  sum = num1 * num2
  puts sum
end

# Code from Ushi

def gimme_numbers
  for i in 1..5
    yield(i)
  end
end

gimme_numbers do |i|
  puts i
end

# Ruby Guides code

def divide_by_10
  puts "Start of Block"
  yield 20
  yield 52
  yield 355
  puts "End of Block"
end

divide_by_10 { |number| puts number.to_f / 10 }

puts "Outside Block"

def greeting
  yield "Hi there!"
  yield "See you!"
end

greeting {|greeting| puts greeting }