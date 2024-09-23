describe MontyHallParadox do
  describe '.simulate' do

    let(:experement_result) { described_class.simulate 10 }

    specify 'result hash keys' do
      expect(experement_result).to include(:iterations, :switching_strategy, :staying_strategy)
      expect(experement_result[:switching_strategy]).to include(:wins, :rate)
      expect(experement_result[:switching_strategy]).to include(:wins, :rate)
    end

  end
end