require 'game'

describe Game do
  subject(:player1) {double(:player1)}
  subject(:player2) {double(:player2)}
  subject(:game) {described_class.new}

  it "allow dave to attack mittens" do
    allow(player2).to receive(:gets_attacked)
    expect(player2).to receive(:gets_attacked)
    game.attack(player2)
  end
end
