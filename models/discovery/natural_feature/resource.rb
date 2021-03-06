require 'details/size'
require 'details/visibility'

class Discovery < Table
  class NaturalFeature < Table
    class Resource < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'game/fruit/vegetable',
        (5..6) => 'herb/spice/dye source',
        (7..9) => 'timber/stone',
        (10..11) => 'ore (copper, iron, etc.)',
        (12..12) => 'precious metal/gems'
      ).freeze

      def add_details
        add_detail('Size', Details::Size.new(random).roll)
        add_detail('Visibility', Details::Visibility.new(random).roll)
      end
    end
  end
end
