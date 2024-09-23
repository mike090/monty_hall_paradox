require "byebug"

describe Player do

  let(:player) { Player.new strategy }
  let(:strategy) { instance_double Proc }


  describe '#first_pick' do
    it 'returns door number' do
      expect(player.first_pick).to be_between(0, 2)
    end
  end

  describe '#second_pick' do
    it 'uses the specific strategy' do
      allow(strategy).to receive(:call).and_return(100)
      expect(strategy).to receive(:call).with(nil,500)
      expect(player.second_pick(500)).to eq 100
    end
  end
end