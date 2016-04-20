require 'models/table'

class Place < Table
  class Adjective < Table
    OPTIONS = RangedHash.new(
      %w(
        Ancient Ashen Black Bloody Blue Bright Broken Burning Clouded Copper
        Cracked Dark Dead Doomed Endless Fallen Far Fearsome Floating Forbidden
        Frozen Ghostly Gloomy Golden Grim Hidden High Iron Jagged Lonely Lost
        Low Near Petrified Red Screaming Sharp Shattered Shifting Shining
        Shivering Shrouded Silver Stalwart Stoney Sunken Thorny Thundering White
        Withered
      )
    ).freeze
  end
end
