require_relative 'ground_type'

class Bison < GroundType
  BASE_HIT_POINTS = 50
  BASE_ATTACK_STRENGTH = 72
  BASE_DEFENSE_STRENGTH = 35

  CUSTOM_ATTACKS = [:bulldoze, :thrash]

  def attacks
    GROUND_TYPE_ATTACKS + CUSTOM_ATTACKS
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
