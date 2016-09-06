module Details
  class Terrain < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'wasteland/desert',
      (2..3) => 'flatland/plain',
      (4..4) => 'wetland/marsh/swamp',
      (5..7) => 'woodland/forest/jungle',
      (8..9) => 'highland/hills',
      (10..11) => 'mountains',
      (12..12) => 'Oddity',
    ).freeze
  end
end
