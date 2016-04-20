class Discovery < Table
  class Evidence < Table
    class Stash < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'trinkets/coins',
        (4..5) => 'tools/weapons/armor',
        (6..7) => 'map',
        (8..9) => 'food/supplies',
        (10..12) => 'treasure' # TODO: Treasure
      ).freeze
    end
  end
end
