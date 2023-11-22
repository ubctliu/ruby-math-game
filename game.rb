class Game 
  attr_accessor :current_player, :turn, :winner

  def initialize
    current_player = nil
    turn = 0
    winner = nil
  end

end