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
      'Earthbound'
    end

    def airborne
      'Airborne'
    end

    def water_going
      'Water-Going'
    end
  end
end
