require 'discovery/structure/ruin'
require 'creature'
require 'details/visibility'

class Discovery < Table
  class NaturalFeature < Table
    class Lair < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'burrow',
        (4..7) => 'cave/tunnel',
        (8..9) => 'nest/aerie',
        (10..10) => 'hive',
        (11..12) => '<%= ruins %>' # TODO: Structure
      ).freeze

      private

      def ruins
        self.sub_table = Discovery::Structure::Ruin.new
        'ruins'
      end

      def add_details
        creature = Creature.new
        add_detail('Creature responsible', creature.elements.join(' &rarr; '))
        add_detail('Visibility', Details::Visibility.new)
      end
    end
  end
end
