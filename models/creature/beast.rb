require 'models/table'

class Creature < Table
  class Beast < Table
    OPTIONS = RangedHash.new(
      (1..7) => '<%= earthbound %>',
      (8..10) => '<%= airborne %>',
      (11..12) => '<%= water_going %>'
    ).freeze

    private

    def earthbound
      self.sub_table = Earthbound.new
      'Earthbound'
    end

    def airborne
      self.sub_table = Airborne.new
      'Airborne'
    end

    def water_going
      self.sub_table = WaterGoing.new
      'Water-Going'
    end

    def add_details
      add_detail('Activity', Details::Activity.new)
    end
  end
end
