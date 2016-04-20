class Discovery < Table
  class NaturalFeature < Table
    class Resource < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'game/fruit/vegetable',
        (5..6) => 'herb/spice/dye source',
        (7..9) => 'timber/stone',
        (10..11) => 'ore (copper, iron, etc.)',
        (12..12) => 'precious metal/gems'
      ).freeze
    end
  end
end
