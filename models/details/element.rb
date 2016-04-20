module Details
  class Element < Table
    OPTIONS = RangedHash.new(
      (1..2) => 'air',
      (3..4) => 'earth',
      (5..6) => 'fire',
      (7..8) => 'water',
      (9..10) => 'life',
      (11..12) => 'death'
    ).freeze
  end
end
