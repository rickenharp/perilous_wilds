require 'models/table'

class Creature < Table
  class Monster < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= unusual %>',
      (8..10) => '<%= rare %>',
      (11..12) => '<%= legendary %>'
    ).freeze

    private

    def unusual
      self.sub_table = Unusual.new
      'Unusual'
    end

    def rare
      self.sub_table = Rare.new
      'Rare'
    end

    def legendary
      self.sub_table = Legendary.new
      'Legendary'
    end

    def add_details
      add_detail('Activity', Details::Activity.new)
      add_detail('Alignment', Details::Alignment.new)
      add_detail('Disposition', Details::Disposition.new)
      add_detail('No. Appearing', Details::NumberAppearing.new)
    end
  end
end
