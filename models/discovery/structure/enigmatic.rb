class Discovery < Table
  class Structure < Table
    class Enigmatic < Table
      OPTIONS = RangedHash.new(
        (1..4) => 'earthworks',
        (5..8) => 'megalith',
        (9..11) => 'statue/idol/totem',
        (12..12) => '<%= oddity %>'
      ).freeze

      private

      def oddity
        self.sub_table = Details::Oddity.new
        'Oddity'
      end
    end
  end
end
