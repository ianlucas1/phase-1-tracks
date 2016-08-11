class Mascot
  attr_reader :experience, :health

  def initialize(args = {})
    @experience = args.fetch(:experience) { 0 }
    @health = args.fetch(:health) { hit_points }
    @status = args.fetch(:status) { :normal }
  end

  def susceptibility
    self.class::ATTACK_TYPES_GROUND_TYPES_SUSCEPTIBLE_TO
  end
  def resistance
    self.class::ATTACK_TYPES_GROUND_TYPES_RESISTANT_TO
  end
  def immunity
    self.class::ATTACK_TYPES_GROUND_TYPES_IMMUNE_TO
  end
  def base_hit_points
    self.class::BASE_HIT_POINTS
  end
  def base_attack_strength
    self.class::BASE_ATTACK_STRENGTH
  end
  def base_defense_strength
    self.class::BASE_DEFENSE_STRENGTH
  end
  def custom_attacks
    self.class::CUSTOM_ATTACKS
  end
  def minimum_hit_points
    self.class::MINIMUM_HIT_POINTS
  end
  def minimum_attack_or_defense_strength
    self.class::MINIMUM_ATTACK_OR_DEFENSE_STRENGTH
  end
  def attack_strength
    calculate_strength(base_attack_strength)
  end
  def defense_strength
    calculate_strength(base_defense_strength)
  end

  def fainted?
    health < 1
  end

  def full_health?
    health == hit_points
  end

  # Why does this method pass in top level?
  def gain_experience(additional_points)
    self.experience = experience + additional_points
  end
  def hit_points
    calculation_base(base_hit_point_value) + minimum_hit_points + level
  end
  def increase_health(health_points)
    self.health = health + health_points
  end
  def knows_attack?(attack_name)
    attacks.include?(attack_name)
  end
  def level
    Math.cbrt(experience).to_i
  end
  def receive_damage(damage_amount)
    self.health = health - damage_amount
  end
  def recover
    self.health = hit_points
  end
 private
  attr_writer :experience

  def health=(new_health)
    if new_health < 0
      @health = 0
    elsif new_health > hit_points
      @health = hit_points
    else
      @health = new_health
    end
  end

  def calculate_strength(base)
    calculation_base(base) + minimum_strength
  end

  def calculation_base(base)
    base * 2 * level / 100
  end
end
