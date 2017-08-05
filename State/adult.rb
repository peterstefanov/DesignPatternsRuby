require_relative 'person_state.rb'
require_relative 'pensioner.rb'

class Adult < PersonState

  def do_checks(person)
    if (person.age == 65)
      person.set_state(Pensioner.new)
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
    puts "Too young for a bus pass"
  end

  def conscript
    puts "Here's your gun"
  end

  def apply_for_medical_card
    puts "Medical NOT card granted"
  end
end