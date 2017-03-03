require 'game'

describe Game do
  subject(:player1) {double(:player1, :hit_points => 60)}
  subject(:player2) {double(:player2, :hit_points => 60)}
  subject(:game) {described_class.new(player1, player2)}

  it "returns player 1" do
    expect(game.player1).to eq player1
  end

  it "returns player 2" do
    expect(game.player2).to eq player2
  end

  it "allow players to attach each ther" do
    allow(player2).to receive(:gets_attacked)
    expect(player2).to receive(:gets_attacked)
    game.attack(player2)
  end

  it "allows players to switch turns" do
    game.switch
    expect(game.current_player).to eq player2
    expect(game.opponent_player).to eq player1
  end

  describe "Game Over" do
    let(:dead_player) {double(:dead, :hit_points => 0)}
    let(:rigged_game) {described_class.new(player1, dead_player)}

    it "returns true when one player's hit points reaches 0" do
      expect(rigged_game.over?).to be true
    end

    it "returns the player who lost" do
      expect(rigged_game.loser).to eq dead_player
    end

    it "returns false when none of the players are dead" do
      expect(game.over?).to be false
    end
  end
end
