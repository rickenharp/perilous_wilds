require 'danger/hazard'
require 'details/aspect'
require 'details/visibility'

class Danger < Table
  class Hazard < Table
    class Unnatural < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= taint %>',
        (4..8) => '<%= arcane_trap %>',
        (9..11) => '<%= planar_trap %>',
        (12..12) => '<%= divine %>'
      ).freeze

      private

      def taint
        'taint/blight/curse'
      end

      def arcane_trap
        'arcane trap/effect'
      end

      def planar_trap
        'planar trap/effect'
      end

      def divine
        'divine'
      end

      def add_details
        add_detail('Aspect', Details::Aspect.new(random).roll)
        add_detail('Visibility', Details::Visibility.new(random).roll)
      end
    end
  end
end
