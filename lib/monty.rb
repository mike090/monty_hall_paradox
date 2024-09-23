class Monty
  def initialize
    @win = rand 0..2
  end

  def define_another(pick)
    return @win unless @win == pick
    ([*0..2] - [@win]).sample
  end

  def win?(pick)
    pick == @win
  end
end
