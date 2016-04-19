class Discovery < RandomElement
  class Structure < RandomElement
    class Infrastructure < RandomElement
      OPTIONS = RangedHash.new(
        (1..4) => 'track/path',
        (5..8) => 'road',
        (9..10) => 'bridge/ford',
        (11..11) => 'mine/quarry',
        (12..12) => 'aqueduct/canal/portal'
      ).freeze
    end
  end
end
