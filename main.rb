require_relative 'player'
require_relative 'question'
require_relative 'game'


game = Game.new
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

def play_turn(player, question)
  puts "#{player.name}: #{question.question}"
  answer = gets.chomp
  question.answer_question(answer.to_i) ? player.score = player.score + 1 : player.score
  puts question.answer_question(answer.to_i) ? "YES! You are correct." : "Seriously? No!"
end

while game.winner.nil?
  puts "----- NEW TURN -----"
  question = Question.new
  if game.current_player.nil?
    game.current_player = player1
    play_turn(player1, question)
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  elsif game.current_player == player1
    game.current_player = player2
    play_turn(player2, question)
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  else
    game.current_player = player1
    play_turn(player1, question)
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
end

if player1.lives == 0 || player2.lives == 0 || player1.score >= 3 || player2.score >= 3
  game.winner = player1.score > player2.score ? "Player 1 wins with a score of #{player1.score}/3" : "Player 2 wins with a score of #{player2.score}/3"
  puts game.winner
  puts "----- GAME OVER -----"
  puts "Good bye!"
end

end