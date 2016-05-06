require 'danger/unnatural_entity'
require 'danger/hazard'
require 'creature'

class Danger < Table
  OPTIONS = RangedHash.new({
    (1..1) => '<%= unnatural_entity %>',
    (2..6) => '<%= hazard %>',
    (7..12) => '<%= creature %>'
  }.freeze)

  def unnatural_entity
    self.sub_table = Danger::UnnaturalEntity.new(random).roll
    'Unnatural Entity'
  end

  def hazard
    self.sub_table = Danger::Hazard.new(random).roll
    'Hazard'
  end

  def creature
    self.sub_table = ::Creature.new(random).roll
    'Creature'
  end
end
