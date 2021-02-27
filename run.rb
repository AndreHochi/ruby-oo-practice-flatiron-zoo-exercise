require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


z1 = Zoo.new("a", "x")
z2 = Zoo.new("b", "y")
z3 = Zoo.new("c", "z")

a1 = Animal.new(1, "bird", "m")
a2 = Animal.new(2, "whale", "n")
a3 = Animal.new(3, "sun", "o")




z1.give_animal(a1)
z1.give_animal(a2)

p z1.animal_nicknames

#binding.pry
puts "done"
