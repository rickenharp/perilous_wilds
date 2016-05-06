require 'creature/humanoid'
require 'creature/beast'
require 'details/ability'
require 'details/feature'

class Creature < Table
  class Monster < Table
    class Unusual < Table
      OPTIONS = RangedHash.new(
        (1..3) => '<%= plant %>',
        (4..5) => '<%= undead_human %>',
        (6..6) => '<%= undead_humanoid %>',
        (7..8) => '<%= beast_beast %>',
        (9..10) => '<%= beast_ability %>',
        (11..12) => '<%= beast_feature %>'
      ).freeze

      private

      def plant
        'plant/fungus'
      end

      def undead_human
        'Undead Human'
      end

      def undead_humanoid
        @undead_humanoid ||= "Undead #{Creature::Humanoid.new(random).roll.elements.last}"
      end

      def beast_beast
        @beast_beast ||= "#{Creature::Beast.new(random).roll.elements.last} + #{Creature::Beast.new(random).roll.elements.last}"
      end

      def beast_ability
        @beast_ability ||= "#{Creature::Beast.new(random).roll.elements.last} + #{Details::Ability.new(random).roll.elements.last}"
      end

      def beast_feature
        @beast_feature ||= "#{Creature::Beast.new(random).roll.elements.last} + #{Details::Feature.new(random).roll.elements.last}"
      end
    end
  end
end
