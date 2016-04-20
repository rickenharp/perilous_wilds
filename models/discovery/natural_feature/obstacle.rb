class Discovery < Table
  class NaturalFeature < Table
    class Obstacle < Table
      OPTIONS = RangedHash.new(
        (1..5) => 'difficult ground (specific to terrain)',
        (6..8) => 'cliff/crevasse/chasm',
        (9..10) => 'ravine/gorge',
        (11..12) => 'Oddity' # TODO: Oddity
      ).freeze
    end
  end
end
