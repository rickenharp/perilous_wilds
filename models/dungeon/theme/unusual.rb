class Dungeon
  class Theme < Table
    class Unusual < Table
      OPTIONS = RangedHash.new({
        (1..1) => 'creation/invention',
        (2..2) => '<%= element %>',
        (3..3) => 'knowledge/learning',
        (4..4) => 'growth/expansion',
        (5..5) => 'deepening mystery',
        (6..6) => 'transformation/change',
        (7..7) => 'chaos and destruction',
        (8..8) => 'shadowy forces',
        (9..9) => 'forbidden knowledge',
        (10..10) => 'poison/disease',
        (11..11) => 'corruption/blight',
        (12..12) => 'impending disaster'
      }.freeze)

      private

      def element
        @element ||= Details::Element.new.roll
      end
    end
  end
end
