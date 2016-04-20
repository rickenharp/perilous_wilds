module Details
  class Alignment < Table
    OPTIONS = RangedHash.new(
      (1..2) => 'Chaotic',
      (3..4) => 'Evil',
      (5..8) => 'Neutral',
      (9..10) => 'Good',
      (11..12) => 'Lawful'
    ).freeze
  end
end
