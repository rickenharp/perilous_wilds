require 'models/table'

class Creature < Table
  class Humanoid < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= common %>',
      (8..10) => '<%= uncommon %>',
      (11..12) => '<%= hybrid %>'
    ).freeze

    private

    def common
      'Common'
    end

    def uncommon
      'Uncommon'
    end

    def hybrid
      'Hybrid'
    end
  end
end
