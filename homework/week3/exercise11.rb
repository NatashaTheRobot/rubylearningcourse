=begin
  Write a Ruby program that, when given an array: 
  collection = [12, 23, 456, 123, 4579] prints each number, 
  and tells you whether it is odd or even.
=end

def even_or_odd(number)
  number.even? ? 'even' : 'odd'
end

collection = [12, 23, 456, 123, 4579]
collection.each { |number|
  puts "#{number} is #{even_or_odd(number)}"
}