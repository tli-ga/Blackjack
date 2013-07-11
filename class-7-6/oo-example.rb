# 1. states are implemented via instance variables
# 2. behaviors are implemented via instance methods

class Dog
  attr_accessor :name, :weight, :height

  @@count = 0

  def self.total_dogs
    "The total dog count is :#{@@count}"
  end

  def initialize(n, w, h)
    @name = n
    @weight = w
    @height =  h
    @@count += 1
  end

  def speak
    "#{@name} barks!"
  end

  def info
    "#{@name} is #{@height} tall and weights #{@weight}"
  end

  def change_it_all(n, w, h)
    self.name = n
    self.weight = w
    self.height = h
  end

  def name
    "Mr." + @name.split(' ').last
  end
end

fred = Dog.new('fred', 25, 25)
puts fred.info
puts "changing it all"
fred.change_it_all('new fred', 50, 50)
puts fred.info
