require_relative 'product_d.rb'

class ProductDNormal < ProductD

  def do_cool_stuff
    puts "I'm a #{self.class.name}, doing a very cool stuff"
  end

end