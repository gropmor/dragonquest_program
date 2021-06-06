class Character
  attr_accessor :hp
  attr_reader :name, :defense

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def calculate_damage(opponent)
    @damage = @offense - opponent.defense / 2
    @damage = 1 if @damage <= 0
    opponent.hp -= @damage
    opponent.hp = 0 if opponent.hp.negative?
  end
end