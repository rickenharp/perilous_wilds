require 'discovery/natural_feature/lair'
require 'discovery/natural_feature/obstacle'
require 'discovery/natural_feature/terrain_change'
require 'discovery/natural_feature/water_feature'
require 'discovery/natural_feature/landmark'
require 'discovery/natural_feature/resource'

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
    end

    def obstacle
      self.sub_table = Obstacle.new
      'Obstacle'
    end

    def terrain_change
      self.sub_table = TerrainChange.new
      'Terrain Change'
    end

    def water_feature
      self.sub_table = WaterFeature.new
      'Water Feature'
    end

    def landmark
      self.sub_table = Landmark.new
      'Landmark'
    end

    def resource
      self.sub_table = Resource.new
      'Resource'
    end
  end
end
