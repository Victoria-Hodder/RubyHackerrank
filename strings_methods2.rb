# In this challenge, your task is to write the following methods:

# - mask_article which appends strike tags around certain words in a text. 
# The method takes 2 arguments: A string and an array of words. It then replaces 
# all the instances of words in the text with the modified version.
# - A helper method strike, given one string, appends strike off HTML tags around 
# it. The strike off HTML tag is <strike></strike>.
  
# For example:

# > strike("Meow!") # => "<strike>Meow!</strike>"
# > strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
# > mask_article("Hello World! This is crap!", ["crap"])
# "Hello World! This is <strike>crap</strike>!"

string = "Meow"

def strike(string)
  "<strike>#{string}</strike>"

  # string.insert(0, "<strike>")
  # string.insert(-1, "</strike>")
  
  # string << "</strike>"
end

puts strike(string)

def mask_article(string, words)
  # pattern = array.join("|")
  # string.gsub(/#{pattern}/) {|match| strike(match)}

  words.each do |word|
    string.gsub!(word, strike(word))
  end

  string
end


string2 = "I like to tea with tangerines"
puts mask_article(string2, ["tea"])

# string3 = "I like big butts"
# puts mask_article(string3, ["like", "butts"])
