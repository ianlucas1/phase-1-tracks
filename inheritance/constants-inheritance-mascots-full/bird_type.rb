require_relative 'mascot_total'

class BirdType < Mascot
  include Raging

  ATTACK_TYPES_FLYING_TYPES_SUSCEPTIBLE_TO = [:water]
  ATTACK_TYPES_FLYING_TYPES_RESISTANT_TO = [:flying]
  ATTACK_TYPES_FLYING_TYPES_IMMUNE_TO = [:ground]

  FLYING_TYPE_ATTACKS = [:wing_attack, :air_slash]

  def immune_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_IMMUNE_TO.include?(attack_type)
  end

  def resistant_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_RESISTANT_TO.include?(attack_type)
  end

  def susceptible_to?(attack_type)
    ATTACK_TYPES_FLYING_TYPES_SUSCEPTIBLE_TO.include?(attack_type)
  end

  def type
    :flying
  end
end
