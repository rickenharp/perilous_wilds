require 'discovery/unnatural_feature/arcane'
require 'discovery/unnatural_feature/planar'
require 'discovery/unnatural_feature/divine'

class Discovery < Table
  class UnnaturalFeature < Table
    OPTIONS = RangedHash.new(
      (1..9) => '<%= arcane %>',
      (10..11) => '<%= planar %>',
      (12..12) => '<%= divine %>'
    ).freeze

    private

    def arcane
      self.sub_table = Discovery::UnnaturalFeature::Arcane.new(random).roll
      'Arcane'
    end

    def planar
      self.sub_table = Discovery::UnnaturalFeature::Planar.new(random).roll
      'Planar'
    end

    def divine
      self.sub_table = Discovery::UnnaturalFeature::Divine.new(random).roll
      'Divine'
    end
  end
end
