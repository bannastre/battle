require 'player'

describe Player do
  subject(:player) { described_class.new('Sally') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Sally'
    end
  end

end
