#the temp file will 
File.new('temp.txt', 'w')
temp_file = File.open('temp.txt', 'r+')

#open the test file and transfer the contents to the temp file
file = File.new('test.txt', 'r+')
file.each do |line|
  if line.index('word') != nil
    temp_file.puts('test test inserted word test test')
  else
    temp_file.puts(line)
  end
end

#close files
temp_file.close
file.close

#delete the test file and replace with the new temp file, which includes "inserted"
File.delete('test.txt')
File.rename('temp.txt', 'test.txt')