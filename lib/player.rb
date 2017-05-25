
class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def take_hit(damage)
    reduce_hp(damage)
  end

  private

  def reduce_hp(damage)
    @hit_points -= damage
  end

end
