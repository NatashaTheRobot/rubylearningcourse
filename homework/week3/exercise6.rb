=begin
  Write a Deaf Grandma program. Whatever you say to grandma 
  (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, 
  unless you shout it (type in all capitals). If you shout, 
  she can hear you (or at least she thinks so) and yells back, 
  NO, NOT SINCE 1938! To make your program really believable, 
  have grandma shout a different year each time; maybe any year at 
  random between 1930 and 1950. You can't stop talking to grandma 
  until you shout BYE.
=end

SENTINAL = 'BYE'

def year
  Random.rand(1930..1950)
end

def deaf_grandma
  puts 'Say something to Grandma...'
  words = gets.chomp
  while words != SENTINAL
    if words == words.upcase
      puts "NO, NOT SINCE #{year}!"
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
    words = gets.chomp
  end
end

#run the deaf grandma program
deaf_grandma