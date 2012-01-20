# p019mtdarry.rb  
# if you give return multiple parameters,  
# the method returns them in an array  
# The times method of the Integer class iterates block num times,  
# passing in values from zero to num-1  
  
def mtdarry  
  10.times do |num|  
    p num
    square = num * num  
    p square
    return square
    #return num, square if num > 7
  end  
end  
  
# using parallel assignment to collect the return value  

p mtdarry
#num, square = mtdarry  
#p num  
#p square  
