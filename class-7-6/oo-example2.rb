
module Swimmable
  def swim
    "swimming normally"
  end
end

module Flyable
  def swim
    "swimming in the air"
  end
end

class Animal
  include Swimmable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "speak from animal"
  end

  def run
    "i'm running"
  end
end

class Mammal < Animal
  include Swimmable
  include Flyable

  def warm_blooded?
    true
  end
end

class Dog < Mammal
  
end

class Cat < Mammal

end

puts "----- spot -----"
spot = Dog.new('spot')
spot.name = "spotty"
puts spot.name
puts spot.speak
puts spot.run
puts spot.swim

puts "----- kitty -----"
kitty = Cat.new('kitty')
puts kitty.warm_blooded?
puts kitty.run
puts kitty.swim
