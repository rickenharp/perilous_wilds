require 'danger/unnatural_entity'

class Danger < Table
  class UnnaturalEntity < Table
    class Undead < Table
      OPTIONS = RangedHash.new(
        (1..4) => '<%= haunt %>',
        (5..8) => '<%= ghost %>',
        (9..9) => '<%= banshee %>',
        (10..11) => '<%= wraith %>',
        (12..12) => '<%= spirit_lord %>'
      ).freeze

      private

      def haunt
        'haunt'
      end

      def ghost
        'ghost/spectre'
      end

      def banshee
        'banshee'
      end

      def wraith
        'wraith/wight'
      end

      def spirit_lord
        'spirit_lord/master'
      end

      def add_details
        add_detail('Ability', Details::Ability.new(random).roll)
        add_detail('Activity', Details::Activity.new(random).roll)
        add_detail('Alignment', Details::Alignment.new(random).roll)
        add_detail('Disposition', Details::Disposition.new(random).roll)
      end
    end
  end
end
