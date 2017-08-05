require 'forwardable'

class CoffeeDecorator
  extend Forwardable

  def_delegators :@component, :description, :cost

  def initialize(component)
    @component = component
  end

end