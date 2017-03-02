require 'game'

describe Game do
  subject(:player1) {double(:player1)}
  subject(:player2) {double(:player2)}
  subject(:game) {described_class.new(player1, player2)}

  it "returns player 1" do
    expect(game.player1).to eq player1
  end

  it "returns player 2" do
    expect(game.player2).to eq player2
  end

  it "allow dave to attack mittens" do
    allow(player2).to receive(:gets_attacked)
    expect(player2).to receive(:gets_attacked)
    game.attack(player2)
  end
end
