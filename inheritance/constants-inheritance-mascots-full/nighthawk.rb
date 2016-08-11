require_relative 'bird_type'

 class Nighthawk < BirdType
  BASE_HIT_POINTS = 40
  BASE_ATTACK_STRENGTH = 45
  BASE_DEFENSE_STRENGTH = 40

  CUSTOM_ATTACKS = [:peck, :hurricane]

  def attacks
    FLYING_TYPE_ATTACKS + CUSTOM_ATTACKS
  end

  def base_attack_strength
    BASE_ATTACK_STRENGTH
  end

  def base_defense_strength
    BASE_DEFENSE_STRENGTH
  end

  def base_hit_point_value
    BASE_HIT_POINTS
  end
end
