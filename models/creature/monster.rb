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
      'Unusual'
    end

    def rare
      'Rare'
    end

    def legendary
      'Legendary'
    end

    def add_details
      add_detail('Activity', Details::Activity.new)
      add_detail('Alignment', Details::Alignment.new)
    end
  end
end
