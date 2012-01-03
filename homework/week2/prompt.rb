=begin
  Method prompt takes a string, and displays that string as a prompt, 
  and returns what the user gives as an answer.
=end


def prompt(prompt)
  print prompt
  STDOUT.flush
  gets.chomp
end

#testing
puts prompt('What is your name? ')
