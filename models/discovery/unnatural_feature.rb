require 'models/random_element'

class Discovery < RandomElement
  class UnnaturalFeature < RandomElement
    OPTIONS = RangedHash.new(
      (1..9) => '<%= arcane %>',
      (10..11) => '<%= planar %>',
      (12..12) => '<%= divine %>'
    ).freeze

    private

    def arcane
      self.sub_element = Arcane.new
      details['Alignment'] = Details::Alignment.new
      'Arcane'
    end

    def planar
      self.sub_element = Planar.new
      details['Alignment'] = Details::Alignment.new
      'Planar'
    end

    def divine
      self.sub_element = Divine.new
      details['Alignment'] = Details::Alignment.new
      'Divine'
    end
  end
end
