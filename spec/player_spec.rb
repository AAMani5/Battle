require "player"

describe Player do
  subject(:player) { described_class.new }
  it "returns player name" do
    expect(player.name).to eq "Mittens"
  end

end
