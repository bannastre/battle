require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1, name: 'Sally') }
  let(:player2) { double(:player2, name: 'Geoff') }
  let(:hit_points) { double(:hit_points) }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.players[0]).to eq game.players[0]
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.players[1]).to eq game.players[1]
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.players[1]).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch player' do
    it 'switches players' do
      expect { game.switch_players }.to change { game.players }.to game.players.reverse!
    end
  end

  describe '#game_over' do
    it 'knows when a game is still going' do
      allow(player1).to receive(:hit_points).and_return 10
      allow(player2).to receive(:hit_points).and_return 20
      expect(game.game_over?).to eq false
    end

    it 'knows when a game is finished' do
      allow(player1).to receive(:hit_points).and_return 10
      allow(player2).to receive(:hit_points).and_return 0
      expect(game.game_over?).to eq true
    end
  end

end
