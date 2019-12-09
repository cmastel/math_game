# Classes: player, question, game

# Player: will store player id and lives remaining, when they
#         get a question wrong, the number of lives remaining will
#          decrease by 1
# Game: will contain the id's of the two players, track who's turn
#       is next, and interface with the player and question classes
# Question: will create a math question, and determine whether the 
#           provided answer is correct

require "./player"
require "./game"
require "./question"

puts "Let's begin.........."
puts ""

game = Game.new()
player_one = Player.new(1)
player_two = Player.new(2)

puts "The starting scores are:"
puts "Player One: #{player_one.lives_remaining}/#{player_one.total_lives}"
puts "Player Two: #{player_two.lives_remaining}/#{player_two.total_lives}"

player = player_two
while player.lives_remaining != 0
  player = (game.turn == 1 ? player_one : player_two)
  is_correct = game.next_turn
  if (!is_correct)
    player.decrease_lives()
  end
  puts "P1: #{player_one.lives_remaining}/#{player_one.total_lives} vs P2: #{player_two.lives_remaining}/#{player_two.total_lives}"
end


player = (game.turn == 1 ? player_one : player_two)
puts ""
puts "Player #{player.id} wins with a score of #{player.lives_remaining}/#{player.total_lives}!"


