require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1, name: 'Sally') }
  let(:player2) { double(:player2, name: 'Geoff') }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq game.player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq game.player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.player2).to receive(:receive_damage)
      game.attack(game.player2)
    end
  end

  describe '#switch player' do
    it 'switches players' do
      expect { game.switch_players }.to change { game.players }.to game.players.reverse!
    end
  end

end
