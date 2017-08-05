require_relative 'person_state.rb'
require_relative 'adult.rb'
require_relative 'child.rb'
require_relative 'pensioner.rb'

require_relative 'person.rb'


person = Person.new
for i in 1..80
  person.incr_age
  person.do_checks
end

