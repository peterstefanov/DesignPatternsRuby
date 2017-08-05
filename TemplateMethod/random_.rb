
class Random_ < Participant

  def init_limits(lower, upper)
    num = Kernel.rand(lower..upper)
  end

  def do_play(lower, num, upper)
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      num = init_limits(lower, upper)
      @num_attempts+=1
    end
  end

end