class Game
  attr_reader :players

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack
    @players[1].receive_damage
  end

  def switch_players
    @players.reverse!
  end

  def game_over?
    @players.select { |player| player.hit_points == 0 }.any?
  end

end
