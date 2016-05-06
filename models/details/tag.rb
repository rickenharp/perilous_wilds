module Details
  class Tag < Table
    OPTIONS = RangedHash.new(
      {
        (1..1) => 'Amorphous',
        (2..2) => 'Cautious',
        (3..3) => 'Construct',
        (4..4) => 'Devious',
        (5..5) => 'Intelligent',
        (6..6) => 'Magical',
        (7..8) => 'Organized',
        (9..9) => 'Planar',
        (10..10) => 'Stealthy',
        (11..11) => 'Terrifying',
        (12..12) => 'roll_twice'
      }
    ).freeze

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      @both ||= Array.new(2) { Tag.new(random).roll(rand(new_range)) }
      self.sub_table = @both.collect(&:sub_table).uniq.first
      @both.join(' & ')
    end
  end
end
