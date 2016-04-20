require 'models/table'

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
        @undead_humanoid ||= "Undead #{Humanoid.new.elements.last}"
      end

      def beast_beast
        @beast_beast ||= "#{Beast.new.elements.last} + #{Beast.new.elements.last}"
      end

      def beast_ability
        @beast_ability ||= "#{Beast.new.elements.last} + #{Details::Ability.new.elements.last}"
      end

      def beast_feature
        @beast_feature ||= "#{Beast.new.elements.last} + Feature"
      end
    end
  end
end
