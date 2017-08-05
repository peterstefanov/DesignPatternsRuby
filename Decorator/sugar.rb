require_relative 'coffee_decorator.rb'

class Sugar < CoffeeDecorator
  def description
    @component.description << " sugar "
  end
  def cost
    @component.cost + 0.20
  end
end