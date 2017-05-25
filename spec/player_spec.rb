require 'player'

describe Player do
  subject(:player1) { described_class.new('Sally') }
  subject(:player2) { described_class.new('Geoff') }

  describe '#name' do
    it 'returns the name' do
      expect(player1.name).to eq 'Sally'
    end
  end

  describe '#attack' do
    it 'attacks opponent' do
      expect(player2).to receive(:take_hit)
      player1.attack(player2)
    end
  end

  describe '#take_hit' do
    it 'reduces hit points when attacked' do
      expect { player1.attack(player2, 10) }.to change { player2.hit_points }.by(-10)
    end
  end

end
