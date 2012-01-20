=begin
  Call this program (p026zdeafgm2.rb) - 
  Modify your Deaf Grandma program (Week 3 / Exercise6): 
  What if grandma doesn't want you to leave? When you shout BYE, 
  she could pretend not to hear you. Change your previous program so that you have to shout 
  BYE three times in a row. Make sure to test your program: if you shout BYE three times, 
  but not in a row, you should still be talking to grandma. You must shout BYE three separate times. 
  If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).
=end

def a_year_remembered
  Random.rand(1930..1950)
end

def deaf_grandma(sentinal = 'BYE')
  puts 'Say something to Grandma...'
  bye_count = 0
  while bye_count != 3
    words = gets.chomp
    words == sentinal ? bye_count += 1 : bye_count = 0
    words == words.upcase ? (puts "NO, NOT SINCE #{a_year_remembered}!") : (puts 'HUH?! SPEAK UP, SONNY!') if bye_count != 3
  end
end

#run the deaf grandma program
deaf_grandma