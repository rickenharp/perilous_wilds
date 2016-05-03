require 'danger/hazard'
require 'details/oddity'
class Danger < Table
  class Hazard < Table
    class Natural < Table
      OPTIONS = RangedHash.new(
        (1..2) => '<%= blinding_mist %>',
        (3..4) => '<%= bog %>',
        (5..7) => '<%= pitfall %>',
        (8..9) => '<%= poison %>',
        (10..11) => '<%= flood %>',
        (12..12) => '<%= oddity %>'
      ).freeze

      private

      def blinding_mist
        'blinding mist/fog'
      end

      def bog
        'bog/mire/quicksand'
      end

      def pitfall
        'pitfall/sinkhole/chasm'
      end

      def poison
        'poison/disease'
      end

      def flood
        'flood/fire/tornado'
      end

      def oddity
        self.sub_table = Details::Oddity.new.roll
        'Oddity'
      end
    end
  end
end
