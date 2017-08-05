
class Linear < Participant

  def init_limits(lower, upper)
    num = lower
  end

  def do_play(lower, num, upper)
    notify_observers
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      num+=1
      @num_attempts+=1
    end
  end

  def player_name
    self.class.name
  end
end