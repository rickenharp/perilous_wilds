require 'creature/monster/unusual'
require 'creature/monster/rare'
require 'creature/monster/legendary'
require 'details/activity'
require 'details/alignment'
require 'details/disposition'
require 'details/number_appearing'
require 'details/size'

class Creature < Table
  class Monster < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= unusual %>',
      (8..10) => '<%= rare %>',
      (11..12) => '<%= legendary %>'
    ).freeze

    private

    def unusual
      self.sub_table = Creature::Monster::Unusual.new(random).roll
      'Unusual'
    end

    def rare
      self.sub_table = Creature::Monster::Rare.new(random).roll
      'Rare'
    end

    def legendary
      self.sub_table = Creature::Monster::Legendary.new(random).roll
      'Legendary'
    end

    def add_details
      add_detail('Activity', Details::Activity.new(random).roll)
      add_detail('Alignment', Details::Alignment.new(random).roll)
      add_detail('Disposition', Details::Disposition.new(random).roll)
      add_detail('No. Appearing', Details::NumberAppearing.new(random).roll)
      add_detail('Size', Details::Size.new(random).roll)
    end
  end
end
