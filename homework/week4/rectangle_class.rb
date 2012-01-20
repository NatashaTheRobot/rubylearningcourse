=begin
  Write a Rectangle class.
=end

class Rectangle
  attr_reader :area, :perimeter
  
  def initialize(length, width)
    @area = length * width
    @perimeter = length * 2 + width * 2
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

#r.area = ("Boogah boogah!")
puts r.area
puts r.perimeter

