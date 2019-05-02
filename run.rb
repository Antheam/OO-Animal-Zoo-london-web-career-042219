require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
londonzoo = Zoo.new('london zoo','london')
creaturesoftheearth = Zoo.new('creatures of the earth','new york')
lulu = Zoo.new('lulu', 'madrid')

penguin = Animal.new('Penguin',londonzoo,'penga',25,'bird')
lion = Animal.new('lion',londonzoo, 'lou',88,'big cat')
fox = Animal.new('fox',lulu,'cheeky',35,'forest creature')


binding.pry
puts "done"
