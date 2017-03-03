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
  end

  def switch
    @opponent_player = current_player
    @current_player = players.select{|player| player != current_player}.first
  end

  def over?
    loosing_player.any?
  end

  def loser
    loosing_player.first
  end

  private

  def loosing_player
    players.select{|player| player.hit_points <= 0}
  end

end
