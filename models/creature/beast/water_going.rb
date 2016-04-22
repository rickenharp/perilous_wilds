class Creature < Table
  class Beast < Table
    class WaterGoing < Table
      OPTIONS = RangedHash.new(
        [
          'insect',
          'jelly/anemone',
          'clam/oyster/snail',
          'eel/snake',
          'frog/toad',
          'fish',
          'crab/lobster',
          'turtle',
          'alligator/crocodile',
          'dolphin/shark',
          'squid/octopus',
          'whale'
        ]
      ).freeze
    end
  end
end
