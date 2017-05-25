require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double(:player1, name: 'Sally') }
  let(:player2) { double(:player2, name: 'Geoff') }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
