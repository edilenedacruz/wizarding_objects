
class Wizard
  attr_reader :name, :pets, :wand
  def initialize(name)
    @name = name
    @pets = []
    @wand = wand
  end

  def give_pet(pet)
    pets << pet
  end

  def pets_count
    pets.length
  end

  def pet_list
    pets.map do |pet|
      if pet.type.start_with?('O')
        "#{pet.name}, an #{pet.type}."
      else
        "#{pet.name}, a #{pet.type}, "
      end
    end.join
  end

  def give_wand(wand)
    @wand = wand
  end

  def cast_spell(spell)
    wand.cast(spell)
  end
end
