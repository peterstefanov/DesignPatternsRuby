
# Evaluate the performance of participants using different guessing strategies

require_relative 'oracle.rb'
require_relative 'participant.rb'
require_relative 'random_.rb'
require_relative 'linear.rb'
require_relative 'smart_random.rb'
require_relative 'binary.rb'
require_relative 'play_game.rb'

NUM_OF_RUNS = 8

oracle = Oracle.new

total_num_attempts = 0
total_num_failures = 0

players = Array.new

random_player = Random_.new(1,NUM_OF_RUNS, oracle, max_num_attempts: NUM_OF_RUNS*2)
random_player.add_observer do |player|
  puts("#{player.player_name} finished the game and took him  #{player.num_attempts} to guess the number!")
end

linear_player = Linear.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*2)
linear_player.add_observer do |player|
  puts("#{player.player_name} is playing !")
end

smart_random_player = SmartRandom.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*5)
smart_random_player.add_observer do |player|
  puts("#{player.player_name} finished the game and took him  #{player.num_attempts} to guess the number!")
end

binary_player = Binary.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*5)
binary_player.add_observer do |player|
  puts("#{player.player_name} made an successful attempt and took him #{player.num_attempts}!")
end

players.push(PlayGame.new(random_player))
players.push(PlayGame.new(linear_player))
players.push(PlayGame.new(smart_random_player))
players.push(PlayGame.new(binary_player))


players.each { |player|
  total_num_attempts = 0
  total_num_failures = 0
  1.upto(NUM_OF_RUNS) do |i|
    oracle.secret_number = i
    player.reset
    if player.play==:success
      total_num_attempts += player.num_attempts
    else
      total_num_failures += 1
    end
  end
  player.delete_observer(player)

  puts "Player with strategy #{player.player_name} took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"
}



