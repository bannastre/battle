class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack
    @players[1].receive_damage
  end

  def switch_players
    @players.reverse!
  end

end
