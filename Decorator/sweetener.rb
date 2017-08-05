require_relative 'coffee_decorator.rb'

class Sweetener < CoffeeDecorator

  def description
    @component.description << " sweetener "
  end

  def cost
    @component.cost + 0.60
  end

end
