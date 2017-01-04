class Wand
  attr_reader :type, :size, :core
  def initialize(type, size, core)
    @type = type
    @size = size
    @core = core
  end

  def cast(spell)
    "Casting #{spell}!"
  end
end
