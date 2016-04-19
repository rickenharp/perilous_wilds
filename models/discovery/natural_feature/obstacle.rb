class Discovery < RandomElement
  class NaturalFeature < RandomElement
    class Obstacle < RandomElement
      OPTIONS = RangedHash.new(
        (1..5) => 'difficult ground (specific to terrain)',
        (6..8) => 'cliff/crevasse/chasm',
        (9..10) => 'ravine/gorge',
        (11..12) => 'Oddity' # TODO: Oddity
      ).freeze
    end
  end
end
