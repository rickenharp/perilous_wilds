class Discovery < RandomElement
  class UnnaturalFeature < RandomElement
    class Arcane < RandomElement
      OPTIONS = RangedHash.new(
        (1..2) => 'residue',
        (3..5) => 'blight',
        (6..7) => 'alteration/mutation',
        (8..10) => 'enchantment',
        (11..12) => 'source/repository'
      ).freeze
    end
  end
end
