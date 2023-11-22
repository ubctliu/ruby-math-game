require_relative player.rb
require_relative question.rb
require_relative game.rb

while !winner
  if !current_player
    current_player = player1
  elsif current_player == player1
    current_player = player2
  else current_player == player2 
    current_player = player1
end