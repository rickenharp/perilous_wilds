class Discovery < Table
  class UnnaturalFeature < Table
    class Divine < Table
      OPTIONS = RangedHash.new(
        (1..3) => 'mark/sign',
        (4..6) => 'cursed place',
        (7..9) => 'hallowed place',
        (10..11) => 'watched place',
        (12..12) => 'presence'
      ).freeze

      def add_details
        add_detail('Alignment', Details::Alignment.new)
        add_detail('Aspect', Details::Aspect.new)
      end
    end
  end
end
