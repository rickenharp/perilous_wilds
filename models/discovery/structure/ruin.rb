class Discovery < RandomElement
  class Structure < RandomElement
    class Ruin < RandomElement
      OPTIONS = RangedHash.new(
        (1..2) => '<%= ruined_infrastructure %>',
        (3..4) => '<%= ruined_dwelling %>',
        (5..6) => '<%= ruined_burial %>',
        (7..8) => '<%= ruined_steading %>',
        (9..12) => '<%= ruined_dungeon %>'
      ).freeze

      private

      def ruined_infrastructure
        @ri ||= "Ruined #{Discovery::Structure::Infrastructure.new(d(6, +6))}"
      end

      def ruined_dwelling
        @rd ||= "Ruined #{Discovery::Structure::Dwelling.new(d(8, +4))}"
      end

      def ruined_burial
        @rb ||= "Ruined #{Discovery::Structure::Burial.new(d(8, +4))}"
      end

      def ruined_steading
        'Ruined Steading' # TODO: Steading
      end

      def ruined_dungeon
        'Ruined Dungeon' # TODO: Dungeon
      end
    end
  end
end
