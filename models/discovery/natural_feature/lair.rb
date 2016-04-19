class Discovery < RandomElement
  class NaturalFeature < RandomElement
    class Lair < RandomElement
      OPTIONS = RangedHash.new(
        (1..3) => 'burrow',
        (4..7) => 'cave/tunnel',
        (8..9) => 'nest/aerie',
        (10..10) => 'hive',
        (11..12) => '<%= ruins %>' # TODO: Structure
      ).freeze

      private

      def ruins
        self.sub_element = Discovery::Structure::Ruin.new
        'ruins'
      end
    end
  end
end
