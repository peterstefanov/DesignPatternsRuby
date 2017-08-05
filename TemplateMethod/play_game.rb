
class PlayGame


  def initialize(player)
    @player = player
  end

  def play
    @player.play
  end

  def reset
    @player.reset
  end

  def num_attempts
    @player.num_attempts
  end

  def player_name
    @player.class.name
  end
end