# 1. states are implemented via instance variables
# 2. behaviors are implemented via instance methods

class Dog
  attr_accessor :name, :weight, :height

  #attr_reader => only creates the getter
  #attr_writer => only creaters the setter

  def initialize(n, w, h)
    @name = n
    @weight = w
    @height =  h
  end

  def speak
    "#{@name} barks!"
  end

#Below is a getter
#  def name
 #   @name
  #end

#Below is a setter
  #def name=(new_name)
  #  @name = new_name
  #end

  def info
    "#{@name} is #{@height} tall and weights #{@weight}"
  end

end



fred = Dog.new('fred')
spot = Dog.new('spot')

puts fred.info
fred.name = "new fred"
fred.weight
puts fred.info