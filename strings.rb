document = <<-HERE         # We begin with <<- followed by the ending delimiter HERE
This is a string literal.
It has two lines and abruptly ends with a newline...
HERE

puts document

tab = "Hello! There is a tab \t here. Did you see?"
puts tab

# Encoding examples

def transcode(string)
  string.force_encoding(Encoding::UTF_8)
end

string = "some string".encode(Encoding::ISO_8859_1)
utf8_string = transcode(string)
puts utf8_string.encoding