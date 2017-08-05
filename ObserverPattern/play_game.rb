require_relative 'observable_subject.rb'

class PlayGame

  include ObservableSubject

  def initialize(player)
    super()
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
    @player.player_name
  end
end