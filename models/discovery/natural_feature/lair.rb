class Discovery < Table
  class NaturalFeature < Table
    class Lair < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'burrow',
        (4..7) => 'cave/tunnel',
        (8..9) => 'nest/aerie',
        (10..10) => 'hive',
        (11..12) => '<%= ruins %>' # TODO: Structure
      ).freeze

      private

      def ruins
        self.sub_table = Discovery::Structure::Ruin.new
        'ruins'
      end
    end
  end
end
