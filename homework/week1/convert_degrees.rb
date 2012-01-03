=begin
  convert_degrees.rb
  Write a program that asks for user input, 
  then changes that input from one temperature unit 
  to another based upon the user's wishes.
=end

explanation = <<END_STR
This program converts the temprature
from one unit of temprature to another.

To convert from Celsius to Fahrenheit, 
type the degrees followed by "C > F". For example, 
to convert 32 degrees Celsius to Fahrenheit, 
simply type "32 C > F".

To convert from Fahrenheit to Celcius, 
type the degrees followed by "F > C". For example, 
to convert 76 degrees Fahrenheit to Celsius, 
simply type "76 F > C".

Please enter the temprature you'd like to convert 
as specified above.
END_STR

#displays the explanation
puts explanation

#gets user input
STDOUT.flush
input = gets.chomp

#parse input to get the temprature and the conversion type
parsed_input = input.split(/ /)
value_to_convert = parsed_input[0].to_f
unit_from = parsed_input[1]
unit_to = parsed_input[3]

#convert the temprature
def convert(temprature, unit_from, unit_to)
  if unit_from == "C" and unit_to == "F"
    degrees = temprature * 9/5 + 32
  elsif unit_from == "F" and unit_to == "C"
    degrees = (temprature - 32) * 5/9
  end 
end

new_value = convert(value_to_convert, unit_from, unit_to)
puts "#{value_to_convert} degrees #{unit_from} is equal to #{new_value} degrees #{unit_to}"



