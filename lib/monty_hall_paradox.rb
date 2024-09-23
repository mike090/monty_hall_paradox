require_relative 'player'
require_relative 'game'

StrategySwitching = -> (first_choise, another_choise) { another_choise }
StrategyStaying = -> (first_choise, *) { first_choise }

class MontyHallParadox
  def self.simulate(iterations = 1000)
    player_with_switching_strategy = Player.new(StrategySwitching)
    player_with_staying_strategy = Player.new(StrategyStaying)
    switching_wins = staying_wings = 0
    iterations.times do
      switching_wins += 1 if Game.new(player_with_switching_strategy, Monty.new).run
      staying_wings += 1 if Game.new(player_with_staying_strategy, Monty.new).run
    end
    format_results iterations, switching_wins, staying_wings
  end

  def self.format_results(iterations, switching_wins, staying_wings)
    {
      iterations:,
      switching_strategy: {
        wins: switching_wins,
        rate: "#{(switching_wins.to_f/iterations).round(2)*100}%"
      },
      staying_strategy: {
        wins: staying_wings,
        rate: "#{(staying_wings.to_f/iterations).round(2)*100}%"
      }
    }
  end

  private_class_method :format_results
end
