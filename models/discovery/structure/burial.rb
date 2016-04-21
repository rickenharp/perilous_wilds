class Discovery < Table
  class Structure < Table
    class Burial < Table
      OPTIONS = RangedHash.new(
        (1..2) => 'grave marker/barrow',
        (3..4) => 'graveyard/necropolis',
        (5..6) => 'tomb/crypt',
        (7..9) => 'shrine',
        (10..11) => 'temple/retreat',
        (12..12) => 'great temple'
      ).freeze

      def add_details
        creature = Creature.new(d(4, +4))
        add_detail('Creature responsible', creature.elements.join(' &rarr; '))
      end
    end
  end
end
