=begin
  Write a Ruby program that tells you how 
  many minutes there are in a year 
  (do not bother right now about leap years etc.).
=end

def minutesInYear(daysInYear, hoursInDay, minutesInHour)
  daysInYear*hoursInDay*minutesInHour
end

daysInYear = 365
hoursInDay = 24
minutesInHour = 60

puts minutesInYear(daysInYear, hoursInDay, minutesInHour)
