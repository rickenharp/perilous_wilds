require 'dungeon/foundation'

class Dungeon
  class Foundation
    class Builder < Table
      OPTIONS = RangedHash.new({
        (1..1) => 'aliens/precursors',
        (2..2) => 'demigod/demon',
        (3..4) => 'natural (caves, etc.)',
        (5..5) => 'religious order/cult',
        (6..7) => '<%= humanoid %>',
        (8..9) => 'dwarves/gnomes',
        (10..10) => 'elves',
        (11..11) => 'wizard/madman',
        (12..12) => 'monarch/warlord'
      }.freeze)

      def humanoid
        @humanoid ||= Creature::Humanoid.new(random).roll.elements.last
      end
    end
  end
end
