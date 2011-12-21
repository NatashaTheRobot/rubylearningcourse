=begin
  Write a method called convert that takes 
  one argument which is a temperature in degrees Fahrenheit. 
  This method should return the temperature in degrees Celsius. 
  To format the output to say 2 decimal places, 
  we can use the Kernel's format method. 
  For example, if x = 45.5678 then format("%.2f", x) 
  will return the string 45.57. 
=end

puts "This program converts degrees Fahrenheit into degrees Celcius"
puts "Enter a number for the degrees you want to convert (e.g. 32)"

#gets user input
STDOUT.flush
degrees_fahrenheit = gets.to_f

#converts degrees fahrenheit into degrees celcius
def convert(degrees_fahrenheit)
  degrees_celcius = (degrees_fahrenheit - 32) * 5/9
end

degrees_celcius = convert(degrees_fahrenheit)
puts "#{degrees_fahrenheit} degrees Fahrenheit is equal to %.2f degrees Celcius" % degrees_celcius
