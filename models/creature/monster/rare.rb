require 'creature/beast'
require 'details/oddity'

class Creature < Table
  class Monster < Table
    class Rare < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= slime %>',
        (4..6) => '<%= creation %>',
        (7..9) => '<%= beast_oddity %>',
        (10..12) => '<%= unnatural_entity %>'
      ).freeze

      private

      def slime
        add_detail('Tag', 'Amorphous')
        'slime/ooze'
      end

      def creation
        add_detail('Tag', 'Construct')
        'creation'
      end

      def beast_oddity
        @beast_oddity ||= "#{Creature::Beast.new.roll.elements.last} + #{Details::Oddity.new.roll.elements.last}"
      end

      def unnatural_entity
        'Unnatural Entity' # TODO: UnnaturalEntity
      end
    end
  end
end
