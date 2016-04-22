require 'creature/humanoid/common'
require 'creature/humanoid/uncommon'
require 'creature/humanoid/hybrid'
require 'details/activity'
require 'details/alignment'
require 'details/disposition'
require 'details/number_appearing'

class Creature < Table
  class Humanoid < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= common %>',
      (8..10) => '<%= uncommon %>',
      (11..12) => '<%= hybrid %>'
    ).freeze

    private

    def common
      self.sub_table = Creature::Humanoid::Common.new.roll
      'Common'
    end

    def uncommon
      self.sub_table = Creature::Humanoid::Uncommon.new.roll
      'Uncommon'
    end

    def hybrid
      self.sub_table = Creature::Humanoid::Hybrid.new.roll
      'Hybrid'
    end

    def add_details
      add_detail('Activity', Details::Activity.new.roll)
      add_detail('Alignment', Details::Alignment.new.roll)
      add_detail('Disposition', Details::Disposition.new.roll)
      add_detail('No. Appearing', Details::NumberAppearing.new.roll)
    end
  end
end
