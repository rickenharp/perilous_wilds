require 'details/terrain'
class Discovery < Table
  class NaturalFeature < Table
    class TerrainChange < Table
      OPTIONS = RangedHash.new(
        (1..4) => '<%= other_terrain_type %>',
        (5..6) => 'crevice/hole/pit/cave',
        (7..8) => 'altitude change',
        (9..10) => 'canyon/valley',
        (11..12) => 'rise/peak in distance'
      ).freeze

      def other_terrain_type
        self.sub_table = Details::Terrain.new(random).roll
        'limited area of another terrain type'
      end
    end
  end
end
