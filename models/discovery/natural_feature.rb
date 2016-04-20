require 'models/table'

class Discovery < Table
  class NaturalFeature < Table
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
      self.sub_table = Lair.new
      'Lair'
      # @lair ||= "Lair<br />#{Lair.new}"
    end

    def obstacle
      self.sub_table = Obstacle.new
      'Obstacle'
      # @obstacle ||= "Obstacle<br />#{Obstacle.new}"
    end

    def terrain_change
      self.sub_table = TerrainChange.new
      'Terrain Change'
      # @terrain_change ||= "Terrain Change<br />#{TerrainChange.new}"
    end

    def water_feature
      self.sub_table = WaterFeature.new
      'Water Feature'
      # @water_feature ||= "Water Feature<br />#{WaterFeature.new}"
    end

    def landmark
      self.sub_table = Landmark.new
      'Landmark'
      # @landmark ||= "Landmark<br />#{Landmark.new}"
    end

    def resource
      self.sub_table = Resource.new
      'Resource'
      # @resource ||= "Resource<br />#{Resource.new}"
    end
  end
end
