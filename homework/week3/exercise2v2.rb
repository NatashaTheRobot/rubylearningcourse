filename = ARGV[0]
 
file = File.open('test.txt', "r+") do |f|
  contents = f.read
  f.pos = 0
  f.write(contents.gsub!(/word/, "inserted word"))
end