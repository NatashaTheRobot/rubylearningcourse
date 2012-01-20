=begin
  Write a class called Dog, that has name as an instance variable and the 
  following methods: bark(), eat(), chase_cat()
  I shall create the Dog object as follows:
  d = Dog.new('Leo')
=end

class Dog
  def initialize(name)
    @name = name 
  end
  
  def bark
    "#{@name} barks Ruff! Ruff!"
  end
  
  def eat
    "#{@name} loves his bone!"
  end
  
  def chase_cat
    "#{@name} is chasing the cat!"
  end
end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat