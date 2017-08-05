
require_relative 'oracle.rb'

# Tries to guess the 'secret' number using several different strategies
class Participant
  attr_accessor :num_attempts, :oracle
  attr_reader :lower, :upper

  def initialize(lower, upper, oracle, max_num_attempts:10)
    @oracle, @max_num_attempts, @lower, @upper = oracle, max_num_attempts, lower, upper
    @num_attempts = 0
  end

  #Template method
  def play
    num = init_limits(@lower, @upper)
    @num_attempts+=1
    do_play(@lower, num, @upper)
    compare
  end

  def init_limits(lower, upper)
    raise "Abstract method called"
  end

  def do_play(lower, num, upper)
    raise "Abstract method called"
  end

  def compare
    if (@num_attempts <= @max_num_attempts)
      :success
    else
      fail
    end
  end

  def reset
    @num_attempts = 0
  end

  private
  def fail
    :fail
  end

end