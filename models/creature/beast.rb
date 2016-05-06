require 'creature/beast/earthbound'
require 'creature/beast/airborne'
require 'creature/beast/water_going'
require 'details/activity'
require 'details/disposition'
require 'details/number_appearing'
require 'details/size'

class Creature < Table
  class Beast < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= earthbound %>',
      (8..10) => '<%= airborne %>',
      (11..12) => '<%= water_going %>'
    ).freeze

    private

    def earthbound
      self.sub_table = Creature::Beast::Earthbound.new(random).roll
      'Earthbound'
    end

    def airborne
      self.sub_table = Creature::Beast::Airborne.new(random).roll
      'Airborne'
    end

    def water_going
      self.sub_table = Creature::Beast::WaterGoing.new(random).roll
      'Water-Going'
    end

    def add_details
      add_detail('Activity', Details::Activity.new(random).roll)
      add_detail('Disposition', Details::Disposition.new(random).roll)
      add_detail('No. Appearing', Details::NumberAppearing.new(random).roll)
      add_detail('Size', Details::Size.new(random).roll)
    end
  end
end
