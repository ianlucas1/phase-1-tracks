require_relative 'water_type'

class SeaLion < WaterType
  BASE_HIT_POINTS = 65
  BASE_ATTACK_STRENGTH = 45
  BASE_DEFENSE_STRENGTH = 55

  CUSTOM_ATTACKS = [:surf, :body_slam]

  def attacks
    WATER_TYPE_ATTACKS + CUSTOM_ATTACKS
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
