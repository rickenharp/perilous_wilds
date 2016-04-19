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
      'Arcane'
    end

    def planar
      'Planar'
    end

    def divine
      'Divine'
    end
  end
end
