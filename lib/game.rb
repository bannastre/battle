class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(attacker, defender, damage)
    defender.take_hit(damage)
  end

end
