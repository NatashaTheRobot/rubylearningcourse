
#total stats for the file
lines = 0
chars = 0
chars_no_spaces = 0
words = 0
sentences = 0
#paragraph count starts with 1, since the first paragraph doesn't have an empty line before it
paragraphs = 1 

#open file and get stats
file = File.new('text.txt', 'r')
file.each do |line|
  lines += 1
  chars += line.strip.length
  chars_no_spaces += line.gsub(/\s+/, '').length
  words += line.strip.split(/ /).length
  sentences += line.count('.!?')
  paragraphs += 1 if line == "\n"
end

#calculate averages
avg_words_in_sentences = words / sentences
avg_sentences_in_paragraph = sentences / paragraphs


#output
output = <<END_STR
Lines: #{lines}
Characters: #{chars}
Characters Without Whitespaces: #{chars_no_spaces}
Words: #{words}
Sentences: #{sentences}
Paragraphs: #{paragraphs} 
Average Words Per Sentence: #{avg_words_in_sentences}
Average Sentences Per Paragraph: #{avg_sentences_in_paragraph}
END_STR

puts output