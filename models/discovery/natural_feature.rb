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
      self.sub_element = Lair.new
      'Lair'
      # @lair ||= "Lair<br />#{Lair.new}"
    end

    def obstacle
      self.sub_element = Obstacle.new
      'Obstacle'
      # @obstacle ||= "Obstacle<br />#{Obstacle.new}"
    end

    def terrain_change
      self.sub_element = TerrainChange.new
      'Terrain Change'
      # @terrain_change ||= "Terrain Change<br />#{TerrainChange.new}"
    end

    def water_feature
      self.sub_element = WaterFeature.new
      'Water Feature'
      # @water_feature ||= "Water Feature<br />#{WaterFeature.new}"
    end

    def landmark
      self.sub_element = Landmark.new
      'Landmark'
      # @landmark ||= "Landmark<br />#{Landmark.new}"
    end

    def resource
      self.sub_element = Resource.new
      'Resource'
      # @resource ||= "Resource<br />#{Resource.new}"
    end
  end
end
