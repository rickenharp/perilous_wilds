module Details
  class MagicType < Table
    OPTIONS = RangedHash.new(
      (1..2) => 'divination',
      (3..4) => 'enchantment',
      (5..6) => 'evocation',
      (7..8) => 'evocation',
      (9..10) => 'necromancy',
      (11..12) => 'summoning'
    ).freeze
  end
end
