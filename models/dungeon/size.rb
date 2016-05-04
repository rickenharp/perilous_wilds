require 'dungeon'

class Dungeon
  class Size < Table
    attr_reader :themes
    attr_reader :areas

    OPTIONS = RangedHash.new({
      (1..3) => '<%= small %>',
      (4..9) => '<%= medium %>',
      (10..11) => '<%= large %>',
      (12..12) => '<%= huge %>'
    }.freeze)

    def small
      @themes = d(4)
      @areas = d(6, +2)
      'small'
    end

    def medium
      @themes = d(6)
      @areas = d(6) + d(6) + 4
      'medium'
    end

    def large
      @themes = d(6, +1)
      @areas = d(6) + d(6) + d(6) + 6
      'large'
    end

    def huge
      @themes = d(6, +2)
      @areas = d(6) + d(6) + d(6) + d(6) + 10
      'huge'
    end
  end
end
