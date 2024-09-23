describe Monty do
  let(:monty) { Monty.new }
  it 'not a scammer' do
    answers = [*0..2].map { |pick| monty.win? pick }
    expect(answers.count true).to eq 1
  end
end