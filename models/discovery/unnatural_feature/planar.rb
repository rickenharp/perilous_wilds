class Discovery < Table
  class UnnaturalFeature < Table
    class Planar < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'distortion/warp',
        (5..8) => 'portal/gate',
        (9..10) => 'rift/tear',
        (11..12) => 'outpost'
      ).freeze

      def initialize(*)
        super
        add_detail('Alignment', Details::Alignment.new)
        add_detail('Element', Details::Element.new)
      end
    end
  end
end
