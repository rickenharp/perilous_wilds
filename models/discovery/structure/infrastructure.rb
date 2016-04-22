require 'creature'

class Discovery < Table
  class Structure < Table
    class Infrastructure < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'track/path',
        (5..8) => 'road',
        (9..10) => 'bridge/ford',
        (11..11) => 'mine/quarry',
        (12..12) => 'aqueduct/canal/portal'
      ).freeze

      def add_details
        creature = Creature.new(d(4, +4))
        add_detail('Creature responsible', creature.elements.join(' &rarr; '))
      end
    end
  end
end
