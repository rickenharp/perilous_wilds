require 'models/random_element'

class Discovery < RandomElement
  class NaturalFeature < RandomElement
    OPTIONS = RangedHash.new(
      (1..2) => '<%= lair %>',
      (3..4) => '<%= obstacle %>',
      (5..7) => '<%= terrain_change %>',
      (8..9) => '<%= water_feature %>',
      (10..11) => '<%= landmark %>',
      (12..12) => '<%= resource %>'
    ).freeze

    private

    def lair
      @lair ||= "Lair<br />#{Lair.new}"
    end

    def obstacle
      @obstacle ||= "Obstacle<br />#{Obstacle.new}"
    end

    def terrain_change
      @terrain_change ||= "Terrain Change<br />#{TerrainChange.new}"
    end

    def water_feature
      'Water Feature'
    end

    def landmark
      'Landmark'
    end

    def resource
      'Resource'
    end
  end
end
