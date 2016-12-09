class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name           = name.capitalize
    @gladiators     = []
  end
  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end
  def fight
    if @gladiators.length == 2
      gladiator_one = @gladiators[0]
      gladiator_two = @gladiators[1]
      weapon_one    = gladiator_one.weapon
      weapon_two    = gladiator_two.weapon

      if weapon_one == 'Trident' && weapon_two == 'Spear'
        @gladiators.delete_at(1)
      elsif weapon_one == 'Spear' && weapon_two == 'Trident'
        @gladiators.delete_at(0)
      end

       if weapon_one == 'Club' && weapon_two == 'Spear'
        @gladiators.delete_at(0)
       elsif weapon_one == 'Spear' && weapon_two == 'Club'
        @gladiators.delete_at(1)
       end

       if weapon_one == 'Trident' && weapon_two == 'Club'
         @gladiators.delete_at(0)
       elsif weapon_one == 'Club' && weapon_two == 'Trident'
        @gladiators.delete_at(1)
       end

       if weapon_one == weapon_two
         @gladiators = []
       end
    end
  end
end
