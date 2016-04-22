require 'details/alignment'
require 'details/element'

class Discovery < Table
  class UnnaturalFeature < Table
    class Planar < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'distortion/warp',
        (5..8) => 'portal/gate',
        (9..10) => 'rift/tear',
        (11..12) => 'outpost'
      ).freeze

      def add_details
        add_detail('Alignment', Details::Alignment.new.roll)
        add_detail('Element', Details::Element.new.roll)
      end
    end
  end
end
