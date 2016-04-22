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
      self.sub_table = Discovery::UnnaturalFeature::Arcane.new
      'Arcane'
    end

    def planar
      self.sub_table = Discovery::UnnaturalFeature::Planar.new
      'Planar'
    end

    def divine
      self.sub_table = Discovery::UnnaturalFeature::Divine.new
      'Divine'
    end
  end
end
