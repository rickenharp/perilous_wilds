require 'models/random_element'

class Region < RandomElement
  class Adjective < RandomElement
    OPTIONS = RangedHash.new(
      %w(
        Ageless Ashen Black Blessed Blighted Blue Broken Burning Cold Cursed
        Dark Dead Deadly Deep Desolate Diamond Dim Dismal Dun Eerie Endless
        Fallen Far Fell Flaming Forgotten Forsaken Frozen Glittering Golden
        Green Grim Holy Impassable Jagged Light Long Misty Perilous Purple Red
        Savage Shadowy Shattered Shifting Shining Silver White Wicked Yellow
      )
    ).freeze
  end
end
