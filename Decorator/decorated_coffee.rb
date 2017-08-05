require_relative 'coffee_decorator.rb'

class DecoratedCoffee < CoffeeDecorator
  def description
    @component.description
  end
  def cost
    @component.cost
  end
end