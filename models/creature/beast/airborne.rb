require 'models/table'

class Creature < Table
  class Beast < Table
    class Airborne < Table
      OPTIONS = RangedHash.new(
        [
          'mosquito/firefly',
          'locust/dragonfly/moth',
          'bee/wasp',
          'chicken/duck/goose',
          'songbird/parrot',
          'gull/waterbird',
          'heron/crane/stork',
          'crow/raven',
          'hawk/falcon',
          'eagle/owl',
          'condor',
          'pteranodon'
        ]
      ).freeze
    end
  end
end
