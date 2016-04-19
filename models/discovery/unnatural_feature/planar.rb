class Discovery < RandomElement
  class UnnaturalFeature < RandomElement
    class Planar < RandomElement
      OPTIONS = RangedHash.new(
        (1..4) => 'distortion/warp',
        (5..8) => 'portal/gate',
        (9..10) => 'rift/tear',
        (11..12) => 'outpost'
      ).freeze
    end
  end
end
