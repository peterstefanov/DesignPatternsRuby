require_relative 'abstract_factory.rb'
require_relative 'product_a_normal.rb'
require_relative 'product_b_normal.rb'
require_relative 'product_c_normal.rb'
require_relative 'product_d_normal.rb'

class ConcreteFactoryNormal < AbstractFactory

  def self.register
    superclass.register(ConcreteFactoryNormal.new)
  end

  def create_product_A
    ProductANormal.new
  end

  def create_product_B
    ProductBNormal.new
  end

  def create_product_C
    ProductCNormal.new
  end

  def create_product_D
    ProductDNormal.new
  end
end