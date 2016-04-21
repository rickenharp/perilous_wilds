module Details
  class Visibility < Table
    OPTIONS = RangedHash.new(
      (1..2) => 'buried/camouflaged/nigh invisible',
      (3..6) => 'partly covered/overgrown/hidden',
      (7..9) => 'obvious/in plain sight',
      (10..11) => 'visible at near distance',
      (12..12) => 'visible at great distance/focal point'
    ).freeze
  end
end
