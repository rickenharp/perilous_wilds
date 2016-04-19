class Discovery < RandomElement
  class Structure < RandomElement
    class Enigmatic < RandomElement
      OPTIONS = RangedHash.new(
        (1..4) => 'earthworks',
        (5..8) => 'megalith',
        (9..11) => 'statue/idol/totem',
        (12..12) => 'Oddity' # TODO: Oddity
      ).freeze
    end
  end
end
