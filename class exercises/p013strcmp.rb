s1 = 'Natasha'
s2 = 'Natasha'
s3 = s1

s1 == s2 ? (puts 'equal') : (puts 'not equal')

s1.eql?(s2) ? (puts 'equal') : (puts 'not equal')

s1.equal?(s2) ? (puts 'equal') : (puts 'not equal')

s1.equal?(s3) ? (puts 'equal') : (puts 'not equal')