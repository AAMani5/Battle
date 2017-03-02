class Player
  attr_reader :name, :hit_points
  DEFAULT_HP = 60
  DEFAULT_PENALTY = 10

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def gets_attacked
    @hit_points -= DEFAULT_PENALTY
  end

  def attack(player)
    player.gets_attacked
  end

end
