
require_relative 'coffee_decorator.rb'

class Syrup < CoffeeDecorator

  def description
    @component.description << " syrup "
  end

  def cost
    @component.cost + 0.30
  end

end
