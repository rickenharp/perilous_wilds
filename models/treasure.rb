class Treasure < Table
  OPTIONS = RangedHash.new({
    (1..1) => 'A few coins, 2d8 or so',
    (2..2) => 'A useful item',
    (3..3) => 'Several coins, about 4d10',
    (4..4) => 'A small valuable (gem, art), worth 2d10x10 coins, 0 weight',
    (5..5) => 'Some minor magical trinket',
    (6..6) => 'Useful clue (map, note, etc.)',
    (7..7) => 'Bag of coins, 1d4x100, 1 weight per 100',
    (8..8) => 'A small item (gem, art) of great value (2d6x100 coins, 0 weight)',
    (9..9) => 'A chest of coins and other small valuables, 1 weight, worth 3d6x100 coins.',
    (10..10) => 'A magical item or magical effect',
    (11..11) => 'Many bags of coins, 2d4x100 or so',
    (12..12) => 'A sign of office (crown, banner) worth at least 3d4x100 coins.',
    (13..13) => 'A large art item (4d4x100 coins, 1 weight)',
    (14..14) => 'Unique item worth at least 5d4x100 coins',
    (15..15) => 'Everything needed to learn a new spell, and roll again',
    (16..16) => 'A portal or secret path (or direcetions to one) and roll again',
    (17..17) => 'Something relating to on of the characters and roll again',
    (18..18) => 'A hoard: 1d10x1000 coins and 1d10x10 gems worth 2d6x100 each',
  }.freeze)

  def roll(number = nil)
    @number = number || treasure_roll
    template_string = self.class::OPTIONS[@number]
    @value = Tilt::ERBTemplate.new { template_string }.render(self)
    add_details
    self
  end

  private

  def treasure_roll
    roll = [random.rand(1..6), random.rand(1..6)]
    if roll == [6, 6]
      return random.rand(1..6) + random.rand(1..6) + random.rand(1..6)
    end
    roll.min
  end
end
