class Game
  attr_reader :players
  def initialize(player1, player2)
    @players = [player1, player2]
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
    players[0],players[1] = players[1],players[0]
  end

end
