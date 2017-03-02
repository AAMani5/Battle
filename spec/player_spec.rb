require "player"

describe Player do
  subject(:player1) { described_class.new("Dave") }
  subject(:player2) { described_class.new("Mittens") }

  it "returns player's name" do
    expect(player1.name).to eq "Dave"
  end

  it "returns player's hit points" do
    expect(player1.hit_points).to eq Player::DEFAULT_HP
  end

  it "deducts hit points by 10" do
    damage = -Player::DEFAULT_PENALTY
    expect{player1.gets_attacked}.to change {player1.hit_points}.by damage
  end

end
