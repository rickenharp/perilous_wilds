module Details
  class Activity < Table
    OPTIONS = RangedHash.new(
      [
        'laying trap/ambush',
        'fighting/at war',
        'prowling/on patrol',
        'hunting/foraging',
        'eating/resting',
        'crafting/praying',
        'traveling/relocating',
        'exploring/lost',
        'returning home',
        'building/excavating',
        'sleeping',
        'dying'
      ]
    ).freeze
  end
end
