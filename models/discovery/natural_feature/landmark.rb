require 'details/oddity'

class Discovery < Table
  class NaturalFeature < Table
    class Landmark < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'water-based (waterfall, geyser, etc.)',
        (4..6) => 'plant-based (ancient tree, giant flowers, etc.)',
        (7..10) => 'earth-based (peak, formation, crater, etc.)',
        (11..12) => '<%= oddity %>'
      ).freeze

      private

      def oddity
        self.sub_table = Details::Oddity.new(random).roll
        'Oddity'
      end
    end
  end
end
