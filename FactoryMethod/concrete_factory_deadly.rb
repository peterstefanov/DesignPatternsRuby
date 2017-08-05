require_relative 'abstract_factory.rb'
require_relative 'product_a_deadly.rb'
require_relative 'product_b_deadly.rb'
require_relative 'product_c_deadly.rb'
require_relative 'product_d_deadly.rb'

class ConcreteFactoryDeadly < AbstractFactory

  def self.register
    superclass.register(ConcreteFactoryDeadly.new)
  end

  def create_product_A
    ProductADeadly.new
  end

  def create_product_B
    ProductBDeadly.new
  end

  def create_product_C
    ProductCDeadly.new
  end

  def create_product_D
    ProductDDeadly.new
  end
end