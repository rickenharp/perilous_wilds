class Region < Table
  class Terrain < Table
    OPTIONS = RangedHash.new(
      %w(
        Bay Bluffs Bog Cliffs Desert Downs Dunes Expanse Fells Fen Flats
        Foothills Forest Groves Heath Heights Hills Hollows Jungle Lake
        Lowland March Marsh Meadows Moor Morass Mounds Mountains Peaks Plains
        Prairie Quagmire Range Reach Sands Savanna Scarps Sea Slough Sound
        Steppe Swamp Sweep Teeth Thicket Upland Wall Waste Wasteland Woods
      )
    ).freeze
  end
end
