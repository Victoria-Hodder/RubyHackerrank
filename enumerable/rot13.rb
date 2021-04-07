### hash version ###  

letters = {
  "a" => "n",
  "b" => "o",
  "c" => "p",
  "d" => "q",
  "e" => "r",
  "f" => "s",
  "g" => "t",
  "h" => "u",
  "i" => "v",
  "j" => "w",
  "k" => "x",
  "l" => "y",
  "m" => "z",
  "n" => "a",
  "o" => "b",
  "p" => "c",
  "q" => "d",
  "r" => "e",
  "s" => "f",
  "t" => "g",
  "u" => "h",
  "v" => "i",
  "w" => "j",
  "x" => "j",
  "y" => "l",
  "z" => "m"
}


def rot13(secret_message, table)
  split_message = secret_message.split("")
  rotate_13 = split_message.map do |letter|
    if table.has_key?(letter)
      table[letter]
    else
      letter
    end
  end
  rotate_13.join()
end

p rot13("secret", letters)
p rot13("private things", letters)
p rot13("Why did the chicken cross the road?", letters)
p rot13("Gb trg gb gur bgure fvqr!", letters)

### ascii version ###

def rot13_ascii(secret_message)
  split_message = secret_message.split("")
  rotate_13 = split_message.map do |letter|
    decimal_value = letter.ord
    if (decimal_value >= 97 && decimal_value <= 109) || (decimal_value >= 65 && decimal_value <= 77)
      (decimal_value + 13).chr
    elsif (decimal_value >= 110 && decimal_value <= 122) || (decimal_value >= 78 && decimal_value <= 90)
      (decimal_value - 13).chr
    else
      letter
    end
  end
  rotate_13.join()
end


p rot13_ascii("secret")
p rot13_ascii("private things")
p rot13_ascii("Why did the chicken cross the road?")
p rot13_ascii("Gb trg gb gur bgure fvqr!")


### map rot13_ascii to each member of the given array object

def rot13(secret_messages)
  secret_messages.map {|message| rot13_ascii(message)}
end

p rot13(["Why did the chicken cross the road?"])



# https://www.rubyguides.com/2019/05/ruby-ascii-unicode/
# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
