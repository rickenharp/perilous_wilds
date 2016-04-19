require 'models/random_element'

class Discovery < RandomElement
  class UnnaturalFeature < RandomElement
    OPTIONS = RangedHash.new(
      (1..9) => 'Arcane',
      (10..11) => 'Planar',
      (12..12) => 'Divine'
    ).freeze
  end
end
