class Creature < Table
  class Humanoid < Table
    class Common < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= halfling %>',
        (4..5) => '<%= goblin %>',
        (6..7) => '<%= dwarf %>',
        (8..9) => '<%= orc %>',
        (10..11) => '<%= half_elf %>',
        (12..12) => '<%= elf %>'
      ).freeze

      private

      def halfling
        add_detail('Size', 'Small')
        'halfling'
      end

      def goblin
        add_detail('Size', 'Small')
        'goblin/kobold'
      end

      def dwarf
        add_detail('Size', 'Small')
        'dwarf/gnome'
      end

      def orc
        'orc/hobgoblin/gnoll'
      end

      def half_elf
        'half_elf/half-orc, etc.'
      end

      def elf
        'elf'
      end
    end
  end
end
