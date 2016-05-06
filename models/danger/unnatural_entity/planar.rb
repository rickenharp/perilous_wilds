require 'danger/unnatural_entity'
require 'details/ability'
require 'details/activity'
require 'details/alignment'
require 'details/disposition'
require 'details/element'
require 'details/feature'
require 'details/tag'

class Danger < Table
  class UnnaturalEntity < Table
    class Planar < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= imp %>',
        (4..6) => '<%= lesser_elemental %>',
        (7..9) => '<%= lesser_demon %>',
        (10..10) => '<%= greater_elemental %>',
        (11..11) => '<%= greater_demon %>',
        (12..12) => '<%= devil %>'
      ).freeze

      private

      def imp
        'imp (Small)'
      end

      def lesser_elemental
        'lesser elemental'
      end

      def lesser_demon
        'lesser demon/horror'
      end

      def greater_elemental
        'greater elemental'
      end

      def greater_demon
        'greater demon/horror'
      end

      def devil
        'devil/elemental lord'
      end

      def add_details
        add_detail('Ability', Details::Ability.new(random).roll)
        add_detail('Activity', Details::Activity.new(random).roll)
        add_detail('Alignment', Details::Alignment.new(random).roll)
        add_detail('Disposition', Details::Disposition.new(random).roll)
        add_detail('Element', Details::Element.new(random).roll)
        add_detail('Feature', Details::Feature.new(random).roll)
        add_detail('Tag', Details::Tag.new(random).roll)
      end
    end
  end
end
