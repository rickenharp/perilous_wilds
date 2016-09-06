require 'treasure'

class Discovery < Table
  class Evidence < Table
    class Stash < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'trinkets/coins',
        (4..5) => 'tools/weapons/armor',
        (6..7) => 'map',
        (8..9) => 'food/supplies',
        (10..12) => '<%= treasure %>'
      ).freeze

      def treasure
        self.sub_table = Treasure.new(random).roll
        'treasure'
      end
    end
  end
end
