class Game
  attr_reader :players, :current_player, :opponent_player
  
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @opponent_player = player2
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def attack(player)
    player.gets_attacked
    switch
  end

  def switch
    @opponent_player = @current_player
    @current_player = players.select{|player| player != current_player}.first
  end

end
