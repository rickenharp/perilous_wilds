class Discovery < RandomElement
  class Structure < RandomElement
    class Burial < RandomElement
      OPTIONS = RangedHash.new(
        (1..2) => 'grave marker/barrow',
        (3..4) => 'graveyard/necropolis',
        (5..6) => 'tomb/crypt',
        (7..9) => 'shrine',
        (10..11) => 'temple/retreat',
        (12..12) => 'great temple'
      ).freeze
    end
  end
end
