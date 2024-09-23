describe Game do

  let(:player_stub) { instance_double Player, first_pick: 1, second_pick: 2 }
  let(:monty_stub)  { instance_double Monty, define_another: 2, win?: false }
  let(:game) { Game.new(player_stub, monty_stub) }

  specify '#run' do
    expect(player_stub).to receive(:first_pick)
    expect(player_stub).to receive(:second_pick)
    expect(monty_stub).to receive(:define_another)
    expect(monty_stub).to receive(:win?)
    game.run
  end
end
