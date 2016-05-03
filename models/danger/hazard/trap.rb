require 'danger/hazard'
require 'creature'
require 'details/aspect'
require 'details/visibility'

class Danger < Table
  class Hazard < Table
    class Trap < Table
      OPTIONS = RangedHash.new(
        (1..2) => '<%= alarm %>',
        (3..5) => '<%= ensnaring %>',
        (6..8) => '<%= injurious %>',
        (9..9) => '<%= gas %>',
        (10..12) => '<%= ambush %>'
      ).freeze

      private

      def alarm
        'alarm'
      end

      def ensnaring
        'ensnaring/paralyzing'
      end

      def injurious
        'injurious (pit, etc.)'
      end

      def gas
        'gas/fire/poison'
      end

      def ambush
        'ambush'
      end

      def add_details
        creature = ::Creature.new.roll
        add_detail('Creature responsible', creature.elements.join(' &rarr; '))
        add_detail('Aspect', Details::Aspect.new.roll)
        add_detail('Visibility', Details::Visibility.new.roll)
      end
    end
  end
end
