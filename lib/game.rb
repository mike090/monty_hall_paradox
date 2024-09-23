require_relative 'monty'

class Game
  def initialize(player, monty)
    @player = player
    @monty = monty
  end

  def run
    pick = @player.first_pick
    another = @monty.define_another(pick)
    pick = @player.second_pick(another)
    @monty.win? pick
  end
end
