require 'danger/unnatural_entity'
require 'details/ability'
require 'details/activity'
require 'details/alignment'
require 'details/aspect'
require 'details/disposition'
require 'details/element'
require 'details/feature'
require 'details/tag'

class Danger < Table
  class UnnaturalEntity < Table
    class Divine < Table
      OPTIONS = RangedHash.new(
        (1..5) => '<%= agent %>',
        (6..9) => '<%= champion %>',
        (10..11) => '<%= army %>',
        (12..12) => '<%= avatar %>'
      ).freeze

      private

      def agent
        'agent'
      end

      def champion
        'champion'
      end

      def army
        'army (Horde)'
      end

      def avatar
        'avatar'
      end

      def add_details
        add_detail('Ability', Details::Ability.new(random).roll)
        add_detail('Activity', Details::Activity.new(random).roll)
        add_detail('Alignment', Details::Alignment.new(random).roll)
        add_detail('Aspect', Details::Aspect.new(random).roll)
        add_detail('Disposition', Details::Disposition.new(random).roll)
        add_detail('Element', Details::Element.new(random).roll)
        add_detail('Feature', Details::Feature.new(random).roll)
        add_detail('Tag', Details::Tag.new(random).roll)
      end
    end
  end
end
