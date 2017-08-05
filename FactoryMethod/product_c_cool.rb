require_relative 'product_c.rb'

class ProductCCool < ProductC

  def perform
    puts "I'm a #{self.class.name}, performing"
  end

end