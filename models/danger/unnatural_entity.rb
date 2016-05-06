require 'danger'
require 'danger/unnatural_entity/undead'
require 'danger/unnatural_entity/planar'
require 'danger/unnatural_entity/divine'

class Danger < Table
  class UnnaturalEntity < Table
    OPTIONS = RangedHash.new(
      (1..8) => '<%= undead %>',
      (9..11) => '<%= planar %>',
      (12..12) => '<%= divine %>'
    ).freeze

    private

    def undead
      self.sub_table = Danger::UnnaturalEntity::Undead.new(random).roll
      'Undead'
    end

    def planar
      self.sub_table = Danger::UnnaturalEntity::Planar.new(random).roll
      'Planar'
    end

    def divine
      self.sub_table = Danger::UnnaturalEntity::Divine.new(random).roll
      'Divine'
    end
  end
end
