=begin
  Given a string, write a program to reverse the word order 
  (rather than character order). TheString and Array classes 
  provide methods which will be very helpful for solving this exercise.
=end

def reverse_string(string)
  string.split.reverse.join(' ')
end

#testing the method
s = "mary had a little lamb"
puts reverse_string(s)