=begin
  This program prints out the multiplication table
=end

def largest_length(integer)
  (integer*integer).to_s.length
end

def spacing(integer, product)
  spacing = ' '
  length_difference = largest_length(integer) - product.to_s.length
  (1..length_difference).each{
    spacing += ' '
  }
  spacing
end

def decoration(integer)
  largest_product = integer * integer
  initial_spacing = ''
  (1..largest_length(integer)).each{
    initial_spacing += ' '
  }
  decoration = initial_spacing + spacing(integer, largest_product)
  (0..integer * (largest_length(integer) + 1)).each{
    decoration += "="
  }
  decoration
end

def times_table(integer)
  times_table = '   '
  (1..integer).each do |i|
    (1..integer).each do |j|
      product = i * j
      spacing = spacing(integer, product)
      times_table << spacing + product.to_s
    end
    times_table << "\n     "    
  end
  times_table
end

def multiplication_table(integer, heading = '', decorate = false)
  table = <<-END_STR
  #{heading}
  #{decoration(integer) if decorate}
  #{times_table(integer)}
  #{decoration(integer) if decorate}
  END_STR
end

table1 = multiplication_table(9, 'Times Table to 9', true)
table2 = multiplication_table(20)

puts table1
puts
puts table2