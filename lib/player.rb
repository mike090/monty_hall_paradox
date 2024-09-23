class Player
  def initialize(strategy)
    @strategy = strategy
  end

  def first_pick
    @first_pick = rand 0..2
  end

  def second_pick(another_door)
    @strategy.call(@first_pick, another_door)
  end
end
