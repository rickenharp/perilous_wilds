require 'models/table'

class Creature < Table
  class Monster < Table
    class Legendary < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= dragon %>',
        (4..6) => '<%= unusual_huge %>',
        (7..9) => '<%= rare_huge %>',
        (10..10) => '<%= beast_dragon %>',
        (11..11) => '<%= unusual_dragon %>',
        (12..12) => '<%= rare_dragon %>'
      ).freeze

      private

      def dragon
        add_detail('Size', 'Huge')
        'dragon/colossus'
      end

      def unusual_huge
        self.sub_table = Unusual.new
        add_detail('Size', 'Huge')
        'Unusual'
      end

      def rare_huge
        self.sub_table = Rare.new
        add_detail('Size', 'Huge')
        'Rare'
      end

      def beast_dragon
        self.sub_table = Beast.new
        'dragon'
      end

      def unusual_dragon
        self.sub_table = Unusual.new
        'dragon'
      end

      def rare_dragon
        self.sub_table = Rare.new
        'dragon'
      end
    end
  end
end
