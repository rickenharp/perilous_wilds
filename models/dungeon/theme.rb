require 'dungeon'
require 'dungeon/theme/mundane'
require 'dungeon/theme/unusual'
require 'dungeon/theme/extraordinary'

class Dungeon
  class Theme < Table
    OPTIONS = RangedHash.new({
      (1..5) => '<%= mundane %>',
      (6..9) => '<%= unusual %>',
      (10..12) => '<%= extraordinary %>'
    }.freeze)

    def mundane
      @mundane ||= Dungeon::Theme::Mundane.new.roll.to_s
    end

    def unusual
      @unusual ||= Dungeon::Theme::Unusual.new.roll.to_s
    end

    def extraordinary
      @extraordinary ||= Dungeon::Theme::Extraordinary.new.roll.to_s
    end
  end
end
