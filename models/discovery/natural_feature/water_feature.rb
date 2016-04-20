class Discovery < Table
  class NaturalFeature < Table
    class WaterFeature < Table
      OPTIONS = RangedHash.new(
        (1..1) => 'spring/hotspring',
        (2..2) => 'waterfall/geyser',
        (3..6) => 'creek/stream/brook',
        (7..8) => 'pond/lake',
        (9..10) => 'river',
        (11..12) => 'sea/ocean'
      ).freeze
    end
  end
end
