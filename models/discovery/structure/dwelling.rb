class Discovery < Table
  class Structure < Table
    class Dwelling < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'campsite',
        (4..6) => 'hovel/hut',
        (7..8) => 'farm',
        (9..10) => 'inn/roadhouse',
        (11..12) => 'tower/keep/estate'
      ).freeze
    end
  end
end
