#
# ABSTRACT FACTORY EXERCISE
# 
require_relative 'abstract_factory.rb'
require_relative 'concrete_factory_normal.rb'
require_relative 'concrete_factory_cool.rb'
require_relative 'concrete_factory_deadly.rb'

class Client 

	def initialize(productType)

    if productType == :normal
       ConcreteFactoryNormal.register
		elsif productType == :cool
			ConcreteFactoryCool.register
		elsif productType == :deadly
			ConcreteFactoryDeadly.register
		else
			raise "Unknown product type: #{productType}"
		end
		@factory_product_type = AbstractFactory.instance


		@prod_A = @factory_product_type.create_product_A
		@prod_B = @factory_product_type.create_product_B
		@prod_C = @factory_product_type.create_product_C
		@prod_D = @factory_product_type.create_product_D
	end

	def foo
		@prod_A.do_your_stuff
		@prod_B.do_it
		@prod_C.perform
		@prod_D.do_cool_stuff
	end

end



