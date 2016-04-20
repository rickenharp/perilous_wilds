require 'models/table'

class Place < Table
  class Feature < Table
    OPTIONS = RangedHash.new(
      %w(
        Barrier Beach Bowl Camp Cave Circle City Cliff Crater Crossing Crypt Den
        Ditch Falls Fence Field Fort Gate Grove Hill Hole Hut Keep Lake Marsh
        Meadow Mountain Pit Post Ridge Ring Rise Road Rock Ruin Shrine Spire
        Spring Stone Tangle Temple Throne Tomb Tower Town Tree Vale Valley
        Village Wall
      )
    ).freeze
  end
end
