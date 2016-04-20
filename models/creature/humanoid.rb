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
      self.sub_table = Common.new
      'Common'
    end

    def uncommon
      self.sub_table = Uncommon.new
      'Uncommon'
    end

    def hybrid
      self.sub_table = Hybrid.new
      'Hybrid'
    end

    def add_details
      add_detail('Activity', Details::Activity.new)
      add_detail('Alignment', Details::Alignment.new)
      add_detail('Disposition', Details::Disposition.new)
    end
  end
end
