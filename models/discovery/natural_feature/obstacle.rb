require 'details/oddity'

class Discovery < Table
  class NaturalFeature < Table
    class Obstacle < Table
      OPTIONS = RangedHash.new(
        (1..5) => 'difficult ground (specific to terrain)',
        (6..8) => 'cliff/crevasse/chasm',
        (9..10) => 'ravine/gorge',
        (11..12) => '<%= oddity %>'
      ).freeze

      private

      def oddity
        self.sub_table = Details::Oddity.new.roll
        'Oddity'
      end
    end
  end
end
