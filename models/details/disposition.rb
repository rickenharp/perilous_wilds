module Details
  class Disposition < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'attacking',
      (2..4) => 'hostile/agressive',
      (5..6) => 'cautious/doubtful',
      (7..7) => 'fearful/fleeing',
      (8..10) => 'neutral',
      (11..11) => 'curious/hopeful',
      (12..12) => 'friendly'
    ).freeze
  end
end
