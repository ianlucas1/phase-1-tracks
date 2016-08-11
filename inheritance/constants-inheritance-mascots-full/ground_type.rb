require_relative 'mascot_total'
class GroundType < Mascot

  ATTACK_TYPES_GROUND_TYPES_SUSCEPTIBLE_TO = [:flying]
  ATTACK_TYPES_GROUND_TYPES_RESISTANT_TO = [:ground]
  ATTACK_TYPES_GROUND_TYPES_IMMUNE_TO = [:water]

  GROUND_TYPE_ATTACKS = [:sand_attack, :earthquake]

  def immune_to?(attack_type)
    ATTACK_TYPES_GROUND_TYPES_IMMUNE_TO.include?(attack_type)
  end

  def resistant_to?(attack_type)
    ATTACK_TYPES_GROUND_TYPES_RESISTANT_TO.include?(attack_type)
  end

  def susceptible_to?(attack_type)
    ATTACK_TYPES_GROUND_TYPES_SUSCEPTIBLE_TO.include?(attack_type)
  end

  def type
    :ground
  end
end
