require 'creature'

class Steading < Table
  OPTIONS = RangedHash.new({
    (1..5) => '<%= village %>',
    (6..8) => '<%= town %>',
    (9..11) => '<%= keep %>',
    (12..12) => '<%= city %>'
  }.freeze)

  private

  def add_details
    creature = ::Creature.new(d(4, +4))
    add_detail('Built by', creature.elements.join(' &rarr; '))
  end

  def village
    'Village'
  end

  def town
    'Town'
  end

  def keep
    'Keep'
  end

  def city
    'City'
  end
end
