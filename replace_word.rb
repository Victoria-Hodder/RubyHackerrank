def add_bang(string)
  "!!#{string}!!"
end

string = "I like tea"
puts add_bang(string)


def replace_words(string, words)
  words.each do |word|
    string.gsub!(word, add_bang(word))
  end
  string
end

tea_lover = replace_words(string, ["tea"])
puts tea_lover

def check_bang(var)
  if var.include?("!!")
    puts "This variable is very excited"
  else
    puts "This variable is not excited"
  end
end

check_bang(tea_lover)

string2 = "The weather is grey"
check_bang(string2)