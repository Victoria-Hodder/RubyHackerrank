# In this challenge, your task is to code a process_text method, 
# which takes an array of strings as input and returns a single 
# joined string with all flanking whitespace and new lines removed. 
# Each string has to be separated by a single space.

# e.g.
# > process_text(["Hi, \n", " Are you having fun?    "])
# "Hi, Are you having fun?

def process_text(string_array)
  # declare empty string
  joined_string = ""
  # iterate through array of strings
  string_array.map do |string|
      # remove all flanking whitespace and new lines - .strip
      stripped = string.strip
      # add to empty string and add space
      joined_string += stripped + " "
  end
  # remove trailing white space added by joining
  return joined_string.strip
end

p process_text(["Hi, \n", " Are you having fun?    "])