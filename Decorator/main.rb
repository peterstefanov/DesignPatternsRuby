
# Mel Ó Cinnéide
# with thanks to Freeman&co. for the example

require_relative 'decorated_coffee.rb'
require_relative 'decaffeinato.rb'
require_relative 'espresso.rb'
require_relative 'sugar.rb'
require_relative 'milk.rb'
require_relative 'soy.rb'
require_relative 'sweetener.rb'
require_relative 'house_blend_coffee.rb'
require_relative 'dark_roast_coffee.rb'
require_relative 'syrup.rb'

require_relative 'coffee_decorator.rb'



decaff = Decaffeinato.new
espresso = Espresso.new
dark_coffee = DarkRoastCoffee.new
house_blend_coffee = HouseBlendCoffee.new


decaff_with_milk = Milk.new(decaff)
decaff_with_milk_sugar = Sugar.new(decaff_with_milk)
my_coffee = DecoratedCoffee.new(decaff_with_milk_sugar)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"


decaff_with_syrup = Syrup.new(decaff)
decaff_with_syrup_sugar = Sugar.new(decaff_with_syrup)
my_coffee = DecoratedCoffee.new(decaff_with_syrup_sugar)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"


espresso_with_milk = Milk.new(espresso)
espresso_with_milk_sugar = Sugar.new(espresso_with_milk)
my_coffee = DecoratedCoffee.new(espresso_with_milk_sugar)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"

my_coffee = DecoratedCoffee.new(espresso)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"

my_coffee = DecoratedCoffee.new(decaff)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"

dark_coffee_with_milk = Milk.new(dark_coffee)
ddv = Sugar.new(dark_coffee_with_milk)
my_coffee = DecoratedCoffee.new(dark_coffee_with_milk)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"

house_blend_coffee_with_soy = Soy.new(house_blend_coffee)
my_coffee = DecoratedCoffee.new(house_blend_coffee_with_soy)
puts 'My coffee is:'
puts my_coffee.description
puts "and costs: €#{my_coffee.cost}"