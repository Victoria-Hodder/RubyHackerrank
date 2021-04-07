# Solution found in the dicussions for "strings - methods I" on Hackerrank

def process_text(arr)
  sum = ""
  arr.map do |i|
      sum += i.strip + " "
  end
  return sum.strip
end

p process_text(["Hi, \n", " Are you having fun?    "])