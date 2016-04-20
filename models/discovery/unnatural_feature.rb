require 'models/table'

class Discovery < Table
  class UnnaturalFeature < Table
    OPTIONS = RangedHash.new(
      (1..9) => '<%= arcane %>',
      (10..11) => '<%= planar %>',
      (12..12) => '<%= divine %>'
    ).freeze

    private

    def arcane
      self.sub_table = Arcane.new
      details['Alignment'] = Details::Alignment.new
      'Arcane'
    end

    def planar
      self.sub_table = Planar.new
      details['Alignment'] = Details::Alignment.new
      'Planar'
    end

    def divine
      self.sub_table = Divine.new
      details['Alignment'] = Details::Alignment.new
      'Divine'
    end
  end
end
