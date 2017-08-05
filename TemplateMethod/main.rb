
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

players.push(PlayGame.new(Random_.new(1,NUM_OF_RUNS, oracle, max_num_attempts: NUM_OF_RUNS*2)))
players.push(PlayGame.new(Linear.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*2)))
players.push(PlayGame.new(SmartRandom.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*5)))
players.push(PlayGame.new(Binary.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*5)))

player = Binary.new(1,NUM_OF_RUNS, oracle, max_num_attempts:NUM_OF_RUNS*5)
player.play

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
  puts "play #{player.player_name} took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"
}



