require_relative 'coffee_decorator.rb'

class Milk < CoffeeDecorator

  def description
    @component.description << " milk "
  end

  def cost
    @component.cost + 0.50
  end

end