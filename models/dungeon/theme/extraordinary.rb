class Dungeon
  class Theme < Table
    class Extraordinary < Table
      OPTIONS = RangedHash.new({
        (1..1) => 'scheming evil',
        (2..2) => 'divination/scrying',
        (3..3) => 'blasphemy',
        (4..4) => 'arcane research',
        (5..5) => 'occult forces',
        (6..6) => 'an ancient curse',
        (7..7) => 'mutation',
        (8..8) => 'the unquiet dead',
        (9..9) => 'bottomless hunger',
        (10..10) => 'incredible power',
        (11..11) => 'unspeakable horrors',
        (12..12) => 'holy war'
      }.freeze)
    end
  end
end
