
#Display your current working directory.
puts Dir.pwd

#Create a new directory tmp under your working directory.
Dir.mkdir('tmp') unless File.exists?('tmp')

#Change your working directory to tmp
Dir.chdir('./tmp') 

#Display your current working directory.
puts Dir.pwd

#Go back to your original directory.
Dir.chdir('..')

#Delete the tmp directory.
Dir.delete('tmp')