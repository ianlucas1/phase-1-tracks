require_relative 'bug_type'

class DragonFly < BugType
  BASE_HIT_POINTS = 60
  BASE_ATTACK_STRENGTH = 55
  BASE_DEFENSE_STRENGTH = 50

  CUSTOM_ATTACKS = [:silver_wind, :pin_missile]

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
