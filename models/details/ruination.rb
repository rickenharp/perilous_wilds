module Details
  class Ruination < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'arcane disaster',
      (2..2) => 'damnation/curse',
      (3..4) => 'earthquake/fire/flood',
      (5..6) => 'plague/famined/drought',
      (7..8) => 'overrun by monsters',
      (9..10) => 'war/invasion',
      (11..11) => 'depleted resources',
      (12..12) => 'better prospects elsewhere'
    ).freeze
  end
end
