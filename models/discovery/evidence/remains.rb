class Discovery < Table
  class Evidence < Table
    class Remains < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'bones',
        (5..7) => 'corpse/carcass',
        (8..9) => 'site of violence',
        (10..10) => 'junk/refuse',
        (11..11) => 'lost supplies/cargo',
        (12..12) => 'tools/weapons/armor'
      ).freeze
    end
  end
end
