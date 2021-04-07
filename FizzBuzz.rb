def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts "No fizzing or buzzing"
  end
end

fizzbuzz(2)
fizzbuzz(6)
fizzbuzz(10)
fizzbuzz(15)
