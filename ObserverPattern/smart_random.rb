
class SmartRandom < Participant

  def init_limits(lower, upper)
    num = Kernel.rand(lower..upper)
  end

  def do_play(lower, num, upper)
    while ((result = @oracle.is_this_the_number?(num)) != :correct) && (@num_attempts <= @max_num_attempts) do
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
      num = init_limits(lower, upper)
      @num_attempts+=1
    end
    notify_observers
  end

  def player_name
    self.class.name
  end
end