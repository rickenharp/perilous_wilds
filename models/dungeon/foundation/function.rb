require 'dungeon/foundation'

class Dungeon
  class Foundation
    class Function < Table
      OPTIONS = RangedHash.new({
        (1..1) => 'source/portal',
        (2..2) => 'mine',
        (3..4) => 'tomb/crypt',
        (5..5) => 'prison',
        (6..7) => 'lair/den/hideout',
        (8..9) => 'stronghold/sanctuary',
        (10..10) => 'shrine/temple/oracle',
        (11..11) => 'archive/library',
        (12..12) => 'unknown/mystery'
      }.freeze)
    end
  end
end
