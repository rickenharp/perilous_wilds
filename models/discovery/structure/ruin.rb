require 'discovery/structure/infrastructure'
require 'discovery/structure/dwelling'
require 'discovery/structure/burial'
require 'creature'
require 'steading'
require 'details/age'
require 'details/ruination'
require 'details/visibility'

class Discovery < Table
  class Structure < Table
    class Ruin < Table
      OPTIONS = RangedHash.new(
        (1..2) => '<%= ruined_infrastructure %>',
        (3..4) => '<%= ruined_dwelling %>',
        (5..6) => '<%= ruined_burial %>',
        (7..8) => '<%= ruined_steading %>',
        (9..12) => '<%= ruined_dungeon %>'
      ).freeze

      private

      def add_details
        creature = ::Creature.new.roll(d(4, +4))
        add_detail('Creature responsible', creature.elements.join(' &rarr; '))
        add_detail('Age', Details::Age.new.roll(d(8, +4)))
        add_detail('Ruination', Details::Ruination.new.roll)
        add_detail('Visibility', Details::Visibility.new.roll)
      end

      def ruined_infrastructure
        @ri ||= Discovery::Structure::Infrastructure.new.roll(d(6, +6))
      end

      def ruined_dwelling
        @rd ||= Discovery::Structure::Dwelling.new.roll(d(8, +4))
      end

      def ruined_burial
        @rb ||= Discovery::Structure::Burial.new.roll(d(8, +4))
      end

      def ruined_steading
        self.sub_table = ::Steading.new.roll
        'Steading'
      end

      def ruined_dungeon
        'Dungeon' # TODO: Dungeon
      end
    end
  end
end
