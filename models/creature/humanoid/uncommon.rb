class Creature < Table
  class Humanoid < Table
    class Uncommon < Table
      OPTIONS = RangedHash.new(
        (1..1) => '<%= fey %>',
        (2..3) => '<%= catfolk %>',
        (4..6) => '<%= lizardfolk %>',
        (7..7) => '<%= birdfolk %>',
        (8..10) => '<%= ogre %>',
        (11..12) => '<%= cyclops %>'
      ).freeze

      private

      def fey
        add_detail('Size', 'Tiny')
        'fey'
      end

      def catfolk
        'catfolk/dogfolk'
      end

      def lizardfolk
        'lizardfolk/merfolk'
      end

      def birdfolk
        'birdfolk'
      end

      def ogre
        add_detail('Size', 'Large')
        'ogre/troll'
      end

      def cyclops
        add_detail('Size', 'Large')
        'cyclops/giant'
      end
    end
  end
end
