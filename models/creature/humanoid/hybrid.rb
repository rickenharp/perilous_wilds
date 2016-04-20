require 'models/table'

class Creature < Table
  class Humanoid < Table
    class Hybrid < Table
      OPTIONS = RangedHash.new(
        (1..2) => '<%= centaur %>',
        (2..5) => '<%= werewolf %>',
        (6..6) => '<%= werecreature %>',
        (7..10) => '<%= human_beast %>',
        (11..12) => '<%= human_2_beast %>'
      ).freeze

      private

      def centaur
        'centaur'
      end

      def werewolf
        'werewolf/werebear'
      end

      def werecreature
        @werecreature ||= "werecreature (#{Beast.new.elements.last})"
      end

      def human_beast
        @human_beast ||= "human + #{Beast.new.elements.last}"
      end

      def human_2_beast
        @human_2_beast ||= "human + #{Beast.new.elements.last} + #{Beast.new.elements.last}"
      end
    end
  end
end
