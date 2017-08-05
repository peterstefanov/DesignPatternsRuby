require_relative 'coffee_decorator.rb'

class Soy < CoffeeDecorator

  def description
    @component.description << " soy "
  end

  def cost
    @component.cost + 0.40
  end

end
