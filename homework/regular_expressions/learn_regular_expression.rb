# learn_regular_expression.rb
STDOUT.sync = true

data = IO.readlines('regular_expression.rb')
data.each do |line|
 puts line
 unless line[0, 1] == '#' or line.strip.length.zero?
   exit if gets.chomp =~ /^q/
   print "#=> "
   p eval(line.chomp)
   puts
 end
end
