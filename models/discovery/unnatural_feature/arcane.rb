class Discovery < Table
  class UnnaturalFeature < Table
    class Arcane < Table
      OPTIONS = RangedHash.new(
        (1..2) => 'residue',
        (3..5) => 'blight',
        (6..7) => 'alteration/mutation',
        (8..10) => 'enchantment',
        (11..12) => 'source/repository'
      ).freeze
    end

    def initialize(*)
      super
      add_detail('Alignment', Details::Alignment.new)
    end
  end
end
