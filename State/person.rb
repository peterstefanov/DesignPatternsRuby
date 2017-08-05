require_relative 'person_state.rb'
class Person
  attr_reader :age

  def initialize
    @age = 0
    @current_state = Child.new
  end

  def set_state(person)
    @current_state = person
  end

  def do_checks
    @current_state.do_checks(self)
  end

  def incr_age
    @age+=1
  end

end