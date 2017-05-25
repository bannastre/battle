require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1, hit_points: 60)}
  let(:player2) { double(:player2, hit_points: 60)}

  describe '#attack' do
    it 'attacks allow players to attack' do
      expect(player2).to receive(:take_hit)
      game.attack(player1, player2, 10) 
    end
  end

end
