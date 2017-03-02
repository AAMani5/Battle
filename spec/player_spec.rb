require "player"

describe Player do
  subject(:player) { described_class.new("Mittens") }

  it "returns player's name" do
    expect(player.name).to eq "Mittens"
  end

  it "returns player's hit points" do
    expect(player.hit_points).to eq 60
  end

  it "deducts hit points by 10" do
    attack = -Player::DEFAULT_PENALTY
    expect{player.gets_attacked}.to change {player.hit_points}.by attack
  end

end
