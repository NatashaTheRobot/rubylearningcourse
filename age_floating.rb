=begin
  age_floating.rb
  Write a Ruby program that displays how old I am, 
  in years, if I am 979000000 seconds old.
  Display the result as a floating point (decimal) 
  number to two decimal places (for example, 17.23).
=end

SECONDS_IN_MINUTE = 60
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_YEAR = 365
SECONDS_IN_YEAR = SECONDS_IN_MINUTE * MINUTES_IN_HOUR * HOURS_IN_DAY * DAYS_IN_YEAR

def calculate_age(seconds)
  years = seconds.to_f / SECONDS_IN_YEAR
end

years = calculate_age(979000000)
printf("I'm %.2f years old\n", years)
