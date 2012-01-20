=begin
  Write a Ruby program that, when given an array: 
  collection = [1, 2, 3, 4, 5] calculates the sum of its elements.
=end

def calculate_sum(collection)
  collection.inject(:+)
end

collection = [1, 2, 3, 4, 5]
puts calculate_sum(collection)