
class Player

  attr_reader :name, :hit_points

  def initialize(name, hit_points=60)
    @name = name
    @hit_points = hit_points
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
