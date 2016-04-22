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
      self.sub_table = Discovery::NaturalFeature::Lair.new
      'Lair'
    end

    def obstacle
      self.sub_table = Discovery::NaturalFeature::Obstacle.new
      'Obstacle'
    end

    def terrain_change
      self.sub_table = Discovery::NaturalFeature::TerrainChange.new
      'Terrain Change'
    end

    def water_feature
      self.sub_table = Discovery::NaturalFeature::WaterFeature.new
      'Water Feature'
    end

    def landmark
      self.sub_table = Discovery::NaturalFeature::Landmark.new
      'Landmark'
    end

    def resource
      self.sub_table = Discovery::NaturalFeature::Resource.new
      'Resource'
    end
  end
end
