require_relative 'person_state.rb'
require_relative 'adult.rb'

class Child < PersonState

  def do_checks(person)
    if (person.age == 17)
      person.set_state(Adult.new)
    else
      person.set_state(self)
    end
    vote
    apply_for_buspass
    conscript
    apply_for_medical_card
  end

  def vote
    puts "Too young to vote"
  end

  def apply_for_buspass
    puts "Too young for a bus pass"
  end

  def conscript
    puts "Too young to be conscripted"
  end

  def apply_for_medical_card
    puts "Medical card granted"
  end

end