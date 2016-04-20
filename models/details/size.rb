module Details
  class Size < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'Tiny',
      (2..3) => 'Small',
      (4..9) => 'medium-sized',
      (10..11) => 'Large',
      (12..12) => 'Huge'
    ).freeze
  end
end
