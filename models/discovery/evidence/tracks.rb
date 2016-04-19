class Discovery < RandomElement
  class Evidence < RandomElement
    class Tracks < RandomElement
      OPTIONS = RangedHash.new(
        (1..3) => 'faint/unclear',
        (4..6) => 'definite/clear',
        (7..8) => 'multiple',
        (9..10) => 'signs of violence',
        (11..12) => 'trails of blood/other'
      ).freeze
    end
  end
end
