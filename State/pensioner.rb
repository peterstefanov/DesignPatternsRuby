require_relative 'person_state.rb'
require_relative 'child.rb'

class Pensioner < PersonState

  def do_checks(person)
    if (person.age == 0)
      person.set_state(Child.new)
    else
      person.set_state(self)
    end
    vote
    apply_for_buspass
    conscript
    apply_for_medical_card
  end

  def vote
    puts "Vote accepted"
  end

  def apply_for_buspass
    puts "Pass granted"
  end

  def conscript
    puts "Too old to be conscripted"
  end

  def apply_for_medical_card
    puts "Medical card granted"
  end
end