class Discovery < RandomElement
  class NaturalFeature < RandomElement
    class TerrainChange < RandomElement
      OPTIONS = RangedHash.new(
        (1..4) => 'limited area of another TERRAIN type', # TODO: Terrain
        (5..6) => 'crevice/hole/pit/cave',
        (7..8) => 'altitude change',
        (9..10) => 'canyon/valley',
        (11..12) => 'rise/peak in distance'
      ).freeze
    end
  end
end
