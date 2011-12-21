=begin
  age_in_seconds.rb
  Using what we have learned so far: 
  I wonder if anyone could have a crack at working out 
  the age in years and months form. 
  For example “I’m 32 years and 6 months old.”
  Use the following values for age_in_seconds:
  979000000
  2158493738
  246144023
  1270166272
  1025600095
=end

SECONDS_IN_MINUTE = 60
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_MONTH = 30
DAYS_IN_YEAR = 365
SECONDS_IN_YEAR = SECONDS_IN_MINUTE * MINUTES_IN_HOUR * HOURS_IN_DAY * DAYS_IN_YEAR
SECONDS_IN_MONTH = SECONDS_IN_MINUTE * MINUTES_IN_HOUR * HOURS_IN_DAY * DAYS_IN_MONTH

def calculate_age(seconds)
  
  years = seconds / SECONDS_IN_YEAR
  remaining_seconds = seconds % SECONDS_IN_YEAR
  months = remaining_seconds / SECONDS_IN_MONTH
  
  return [years, months]
end

age_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]
age_in_seconds.each{ |age|
  result = calculate_age(age)
  puts "I'm #{result[0]} years and #{result[1]} months old"
}