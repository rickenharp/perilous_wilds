class Discovery < RandomElement
  class NaturalFeature < RandomElement
    class Landmark < RandomElement
      OPTIONS = RangedHash.new(
        (1..3) => 'water-based (waterfall, geyser, etc.)',
        (4..6) => 'plant-based (ancient tree, giant flowers, etc.)',
        (7..10) => 'earth-based (peak, formation, crater, etc.)',
        (11..12) => 'Oddity' # TODO: Oddity
      ).freeze
    end
  end
end
