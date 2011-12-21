=begin
  This program prints out the multiplication table
=end

def spacing(integer, product)
  spacing = ' '
  largest_length = (integer * integer).to_s.length
  product_length = product.to_s.length
  length_difference = largest_length - product_length
  for i in 1..length_difference
    spacing += ' '
  end
  return spacing
end

def decoration(integer)
  largest_product = integer * integer
  largest_length = largest_product.to_s.length
  initial_spacing = ''
  for i in 1..largest_length
    initial_spacing += ' '
  end
  decoration = initial_spacing + spacing(integer, largest_product)
  for i in 0..integer * (largest_length + 1)
    decoration += "="
  end
  return decoration
end

def times_table(integer)
  times_table = '   '
  for i in 1..integer
    for j in 1..integer
      product = i * j
      spacing = spacing(integer, product)
      times_table << spacing + product.to_s
    end
    times_table << "\n     "
  end
  return times_table
end

def multiplication_table(integer, heading = '', decorate = false)
  if decorate == true
    decoration = decoration(integer)
  end

  times_table = times_table(integer)

  table = <<-END_STR
  #{heading}
  #{decoration}
  #{times_table}
  #{decoration}
  END_STR
end

table1 = multiplication_table(9, 'Times Table to 9', true)
table2 = multiplication_table(20, 'Times Table to 20', false)

puts table1
puts
puts table2