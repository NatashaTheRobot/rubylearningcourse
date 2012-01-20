##########################
### Regular Expression ###
##########################

# Ruby is very good at disecting data.  The reason for that is that Matz elected
# to not only include a mini language used for pattern matching, but more
# importantly to treat it as a first class citizen inside Ruby.  This mini
# language is called Regular Expression.

# There are many advantages to learning to use Regular Expressions.  Some tasks
# in Ruby are easiest to accomplish with a regex, as we often call them.  Other
# tool make use of them too though, like text editors and command-line
# utilities.  Learn them once and you may find a lot of opportunities to use
# them.

# Unfortunately, Regular Expressions are often shrouded in geek mystery and this
# has lead people to think they are complex and hard.  That's just not the case.
# I'm going to prove that to you be teaching you a large chunk of the Regular
# Expression mini-language in about an hour, without even explaining things.

# Let's try a simple exercise.  I'm going to show you example and I want you to
# discuss as a group what you are seeing.  I need a volunteer to record what we
# have learned on the board as we go.  In the end, you will see that Regular
# Expressions are so easy you taught them to yourself!

# Ready?

#####################################
### Building a Regular Expression ###
#####################################

# A Regular Expression is delimited by /.../
//.class
/abc/.class

# Or a choose your own delimiter syntax
%r{<br/?>}.class
%r!<br/?>!.class

################
### Matching ###
################

# Indexing with a Regexp returns the match, or nil
"abc"[/a/]
"James"[/a/]
"def"[/a/]

#############
### Modes ###
#############

# Use /i to make a match case insensative
"abc"[/a/]
"ABC"[/a/]
"abc"[/a/i]
"ABC"[/a/i]

#########################
### Character Classes ###
#########################

# A character class matches one of the included characters
"abc"[/[aeiou]/]
"James"[/[aeiou]/]
"def"[/[aeiou]/]
"abcdef"[/[aeiou]/]
"xyz"[/[aeiou]/]

# A character class can be negated
"abc"[/[^aeiou]/]
"James"[/[^aeiou]/]
"xyz"[/[^aeiou]/]
"aaa"[/[^aeiou]/]

# A character class can include ranges
"UPPER"[/[A-Z]/]
"lower"[/[A-Z]/]
"lower"[/[^A-Z]/]
"lower"[/[a-z]/]
"the number is 42"[/[0-9]/]
"3 blind mice"[/[A-Za-z0-9]/]

##################################
### Shortcut Character Classes ###
##################################

# \d is a shortcut for [0-9]
"the number is 42"[/\d/]
"abc"[/\d/]

# \D is a shortcut for [^0-9]
"the number is 42"[/\D/]
"abc"[/\D/]

# \s is a shortcut for matching whitespace
"space: "[/\s/]
"tab:\t"[/\s/]
"newline:\n"[/\s/]

# \S is a shortcut for matching non-whitespace
" \t\n word"[/\S/]
" \t\n"[/\S/]

# \w is a shortcut for [A-Za-z0-9_]
"\tword"[/\w/]
"\tWord"[/\w/]
"42 Word"[/\w/]
"_underscore"[/\w/]
"! @ - # % ^ & * ( ) - + ="[/\w/]

# \W is a shortcut for [^A-Za-z0-9_]
"! @ - # % ^ & * ( ) - + ="[/\W/]
"\tword"[/\W/]
"word"[/\W/]

# . matches any character but newline
"abc"[/a./]
"James"[/a./]
"aa"[/a./]
"a(1)"[/a./]
"a"[/a./]
"a\nb"[/a./]
"a\tb"[/a./]
"a b"[/a./]

##################################
### Escaping and Interpolation ###
##################################

# Use a \ to escape special characters
"james@graysoftinc.com"[/inc\.com/]
"james@graysoftinc-com"[/inc\.com/]
"a[1]"[/\[\d\]/]
Regexp.escape("d[ang]ero.us")  # you can escape content for use in a Regexp

# Use #{...} to interpolate in a Regexp, just like String
@input = "James"
"James Edward Gray II"[/#{Regexp.escape(@input)}/i]
"james@graysoftinc.com"[/#{Regexp.escape(@input)}/i]
"Dana Gray"[/#{Regexp.escape(@input)}/i]

##################
### Repetition ###
##################

# Use ? to make something optional
"<br/>"[%r{<br/?>}]
"<br>"[%r{<br/?>}]
"<br//>"[%r{<br/?>}]
"<br.>"[%r{<br/?>}]

# Use + to match one or more
"the number is 42"[/\d/]
"the number is 42"[/\d+/]
"the number is 420"[/\d+/]
"the number is 420000"[/\d+/]
"the number is 420000.00"[/\d+/]
"the number"[/\d+/]

# Use * to match zero or more
"a"[/a*/]
"aaa"[/a*/]
"aaa "[/a*/]
"aaa aa"[/a*/]
"b"[/a*/]
""[/a*/]

# use {n} to match an exact count
"123456789"[/\d{3}/]
"123456789"[/\d{4}/]
"123456789"[/\d{10}/]

# use {n,m} to match between n and m
"123456789"[/\d{2,4}/]
"123"[/\d{2,4}/]
"12"[/\d{2,4}/]
"1"[/\d{2,4}/]

# use {n,} to match at least n
"123456789"[/\d{6,}/]
"123456789123456789"[/\d{6,}/]
"123456"[/\d{6,}/]
"12345"[/\d{6,}/]

# use {0,m} to match up to m
"123456789"[/\d{0,3}/]
"12"[/\d{0,3}/]
"1"[/\d{0,3}/]
""[/\d{0,3}/]

#############################
### Finding and Replacing ###
#############################

# Call scan() to get an Array of all matches
"james@graysoftinc.com".scan(/[aeiou]/)
"james@graysoftinc.com".scan(/\W/)
"james@graysoftinc.com".scan(/\s/)

# sub() is used to replace the first match
"James Edward Gray II".sub(/[aeiou]/i, "X")
"James Edward Gray II".sub(/[a-z]/i, "X")
"James Edward Gray II".sub(/\d+/i, "X")

# gsub() is used to replace all matches
"James Edward Gray II".gsub(/[aeiou]/i, "X")
"James Edward Gray II".gsub(/[a-z]/i, "X")
"James Edward Gray II".gsub(/\d+/i, "X")

# sub!() and gsub!() alter the String
@name = "James Edward Gray II"
@name.sub(/\w+/, "X")
@name
@name.sub!(/\w+/, "X")
@name

@name.gsub(/\w+/, "X")
@name
@name.gsub!(/\w+/, "X")
@name

# sub() and gsub() can take a block for the replacement
"james gray".sub(/\w+/) { |word| word.capitalize }
"james gray".gsub(/\w+/) { |word| word.capitalize }

###############
### Anchors ###
###############

# Use \z to match at the end of a String
"james@graysoftinc.com"[/\w+\z/]
"the number is 42.00"[/\d+\z/]
"james@graysoftinc.com"[/\d+\z/]

@email = "james@graysoftinc.com"
@email[/\z/] = ">"  # you can assign to replace a regular expression match
@email

# Use \A to match at the beginning of a String
"james@graysoftinc.com"[/\A\w+/]
"3 blind mice"[/\A\d/]
"the number is 42"[/\A\d/]

@email[/\A/] = "<"
@email

# Use ^ to match at the beginning of a line
"1 2 3\n4 5 6\n7 8 9".scan(/\A\d/)
"1 2 3\n4 5 6\n7 8 9".scan(/^\d/)

# Use $ to match at the end of a line
"1 2 3\n4 5 6\n7 8 9".scan(/\d\z/)
"1 2 3\n4 5 6\n7 8 9".scan(/\d$/)

# Use \b to anchor word boundaries
"6 word boundaries".gsub(/\b/, "!")
"rubies escape James".scan(/\w+es\b/)
"Jimmy"[/Jim/]
"Jimmy"[/Jim\b/]
"Jim"[/Jim\b/]

################
### Grouping ###
################

# Use (...) to group elements
"y"[/\Ay(es)?\z/]
"ye"[/\Ay(es)?\z/]
"yes"[/\Ay(es)?\z/]
"Oh Haha!"[/(ha)+/i]
"Oh Hahaha!"[/(ha)+/i]
"Oh Hahahaaa!"[/(ha)+/i]

###################
### Alternation ###
###################

# Use | to match multiple sub patterns
"cat"[/[cbr]at/]
"bat"[/[cbr]at/]
"rat"[/[cbr]at/]
"brat"[/[cbr]at/]

"cat"[/br?at|[cr]at/]
"bat"[/br?at|[cr]at/]
"rat"[/br?at|[cr]at/]
"brat"[/br?at|[cr]at/]

"cat"[/(br?|[cr])at/]
"bat"[/(br?|[cr])at/]
"rat"[/(br?|[cr])at/]
"brat"[/(br?|[cr])at/]

(0..100).select { |n| n.to_s[/\A(2[01]|1?\d)\z/] }

#################
### Capturing ###
#################

# Captured groups can be accessed by number
"James Gray"[/\A(\w+)\s+(\w+)\z/, 1]
"James Gray"[/\A(\w+)\s+(\w+)\z/, 2]
"James Edward Gray"[/\A(\w+)\s+(\w+)\z/, 1]

# Captures count from the opening or left parentheses
"james@graysoftinc.com"[/\A(\w+)@((\w+)\.(\w+))\z/, 1]
"james@graysoftinc.com"[/\A(\w+)@((\w+)\.(\w+))\z/, 2]
"james@graysoftinc.com"[/\A(\w+)@((\w+)\.(\w+))\z/, 3]
"james@graysoftinc.com"[/\A(\w+)@((\w+)\.(\w+))\z/, 4]

# Captures can also be accessed in sub()/gsub() replacement Strings or
# with $1, $2, ... variables after a match
"James Gray".sub(/\A(\w+)\s+(\w+)\z/, '\2, \1')
"James Gray".sub(/\A(\w+)\s+(\w+)\z/) { "#{$2}, #{$1}" }

#######################
### Match Operators ###
#######################

# =~ is another way to test a match
"42" =~ /\A\d+\z/ ? true : false
"42.00" =~ /\A\d+\z/ ? true : false

# !~ means "doesn't match"
"42.00" !~ /\A\d+\z/ ? true : false
"42" !~ /\A\d+\z/ ? true : false
