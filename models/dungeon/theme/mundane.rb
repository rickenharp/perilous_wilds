# require 'dungeon/theme'

class Dungeon
  class Theme < Table
    class Mundane < Table
      OPTIONS = RangedHash.new({
        (1..1) => 'rot/decay',
        (2..2) => 'torture/agony',
        (3..3) => 'madness',
        (4..4) => 'all is lost',
        (5..5) => 'noble sacrifice',
        (6..6) => 'savage fury',
        (7..7) => 'survival',
        (8..8) => 'criminal activity',
        (9..9) => 'secrets/treachery',
        (10..10) => 'tricks and traps',
        (11..11) => 'invasion/infestation',
        (12..12) => 'factions at war'
      }.freeze)
    end
  end
end
