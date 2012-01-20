=begin
  - if divided by 7 then output *Dazz* 
  - if dividable by 3 and 7 then output *FizzDazz*
  - if dividable by 3 and 5 and 7 then output *FizzBuzzDazz*
  - If divisible by 11, then output *Kezz*

  And extend it so it can take care of more "pairs". The idea here is to pass a block to a method
  that then evaluates the divisibility of the number given a divider and it's matching string. ;)
=end

@pairs = {3 => 'Fizz', 5 => 'Buzz', 7 => 'Dazz', 11 => 'Kezz'}

def get_output(num)
  output = ''
  @pairs.each_key { |key|
    output << @pairs[key] if num % key == 0
  }
  output == '' ? num : output
end

(1..100).each do |num|
  puts get_output(num)
end