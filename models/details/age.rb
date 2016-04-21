module Details
  class Age < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'being born/built',
      (2..4) => 'young/recent',
      (5..7) => 'middle-aged',
      (8..9) => 'old',
      (10..11) => 'ancient',
      (12..12) => 'pre-historic'
    ).freeze
  end
end
