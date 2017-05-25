require 'player'

describe Player do
  subject(:player1) { described_class.new('Sally') }
  subject(:player2) { described_class.new('Geoff') }

  describe '#name' do
    it 'returns the name' do
      expect(player1.name).to eq 'Sally'
    end
  end

  describe '#take_hit' do
    it 'reduces hit points when attacked' do
      player1.take_hit(10)
      expect(player1.hit_points).to eq 50
    end
  end

end
