# Regex

tea_lover = "I like tea"

# These lines do the same (replace !! with ??)
puts tea_lover.gsub("!!", "??")
puts tea_lover.gsub(/[!!]/, "?")

# Replace white space with ?
puts tea_lover.gsub(/[\s]/, "?")

string_with_digits = "++h3ll0++"

# Replace digits with *
puts string_with_digits.gsub(/[\d]/, "*")

# Replace any non-digits with *
puts string_with_digits.gsub(/[\D]/, "*")

# Replace NOT word character (alphanumeric character plus underscore) with *
puts string_with_digits.gsub(/[\W]/, "*")
