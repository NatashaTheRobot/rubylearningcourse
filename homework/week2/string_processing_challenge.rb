s = <<END_STR
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
ut aliquip ex ea commodo consequat. 
Duis autem vel eum iriure dolor in 
hendrerit in vulputate velit esse molestie consequat, 
vel illum dolore eu feugiat nulla facilisis at vero 
eros et accumsan et iusto odio dignissim qui blandit 
praesent luptatum zzril delenit augue duis 
dolore te feugait nulla facilisi.
Lorem ipsum dolor sit amet, 
consectetuer adipiscing elit, 
sed diam nonummy nibh euismod 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
tincidunt ut laoreet dolore magna 
aliquam erat volutpat. 
Ut wisi enim ad minim veniam, 
quis nostrud exerci tation 
ullamcorper suscipit lobortis nisl 
END_STR


def get_justification(string)
  #gets the number of lines in the files
  num_of_lines = string.lines.count
  #gets the length of the number of lines
  num_of_lines.to_s.length.to_i
end

s.each_line.with_index(1) { |line, i|
  puts "Line " << "#{i}".rjust(get_justification(s), '0')  << ": #{line}"
}