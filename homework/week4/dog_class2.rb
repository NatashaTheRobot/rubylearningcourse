class Dog
  
  attr_accessor :name, :trick
  
  def initialize(name)
    @name = name 
    @trick = {}
  end  
  
  def teach_trick(trick_name, trick)
    @trick[:trick_name] = trick unless @trick.has_key?(:trick_name)
    p @trick
  end
end

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
