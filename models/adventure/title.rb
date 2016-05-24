require 'adventure'

class Adventure
  class Title
    def initialize(random = Random.new)
      @random = random
    end

    def roll
      @part1 = Part1.new(@random).roll
      @part2 = Part2.new(@random).roll
      self
    end

    def to_s
      "#{@part1} #{@part2}"
    end

    class Part1 < Table
      OPTIONS = RangedHash.new(
        %w(
          Acolyte Beast Blood Children Gods Hand Jewels Master Paths Plague
          Prophecy Queen Servant Shadow Sign Song Sword Vengeance Wind
          Whisper
        ).freeze
      )
    end

    class Part2 < Table
      OPTIONS = RangedHash.new(
        [
          'of Chaos',
          'of Darkness',
          'of Death',
          'of Doom',
          'of Eternity',
          'of Midnight',
          'of the Night',
          'of Silence',
          'of Sorcery',
          'of Sorrow',
          'of the Boreas',
          'of the Deeps',
          'of the Ice',
          'of the Lost',
          'of the Moon',
          'of the Mountain',
          'of the Necropolis',
          'of the Stars',
          'of the Tomb',
          'of the Wastes'
        ].freeze
      )
    end
  end
end
