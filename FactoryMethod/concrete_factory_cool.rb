require_relative 'abstract_factory.rb'
require_relative 'product_a_cool.rb'
require_relative 'product_b_cool.rb'
require_relative 'product_c_cool.rb'
require_relative 'product_d_cool.rb'

class ConcreteFactoryCool < AbstractFactory

  def self.register
    superclass.register(ConcreteFactoryCool.new)
  end

  def create_product_A
    ProductACool.new
  end

  def create_product_B
    ProductBCool.new
  end

  def create_product_C
    ProductCCool.new
  end

  def create_product_D
    ProductDCool.new
  end
end