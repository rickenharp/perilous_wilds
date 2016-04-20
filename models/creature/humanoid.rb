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

    def add_details
      add_detail('Activity', Details::Activity.new)
      add_detail('Alignment', Details::Alignment.new)
    end
  end
end
