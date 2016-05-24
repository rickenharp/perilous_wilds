require 'adventure'

class Adventure
  class Mission < Table
    OPTIONS = RangedHash.new(
      [
        '<%= attack %>',
        '<%= decipher %>',
        '<%= destroy %>',
        '<%= elude %>',
        '<%= escape %>',
        '<%= escort %>',
        '<%= explore %>',
        '<%= find %>',
        '<%= guard %>',
        '<%= kidnap %>',
        '<%= kill %>',
        '<%= locate %>',
        '<%= protect %>',
        '<%= question %>',
        '<%= recover %>',
        '<%= rescue_ %>',
        '<%= seek %>',
        '<%= steal %>',
        '<%= transport %>',
        '<%= watch %>'
      ].freeze
    )

    private

    def place
      Place.new(random).roll
    end

    def thing
      Thing.new(random).roll
    end

    def person
      Person.new(random).roll
    end

    def attack
      "Attack #{place}"
    end

    def decipher
      "Decipher #{thing}"
    end

    def destroy
      "Destroy #{thing}"
    end

    def elude
      "Elude #{person}"
    end

    def escape
      "Escape #{place}"
    end

    def escort
      "Escort #{person}"
    end

    def explore
      "Explore #{place}"
    end

    def find
      "Find #{thing}"
    end

    def guard
      "Guard #{thing}"
    end

    def kidnap
      "Kidnap #{person}"
    end

    def kill
      "Kill #{person}"
    end

    def locate
      "Locate #{person}"
    end

    def protect
      "Protect #{person}"
    end

    def question
      "Question #{person}"
    end

    def recover
      "Recover #{thing}"
    end

    def rescue_
      "Rescue #{person}"
    end

    def seek
      "Seek #{place}"
    end

    def steal
      "Steal #{thing}"
    end

    def transport
      "Transport #{thing}"
    end

    def watch
      "Watch #{place}"
    end

    class Person < Table
      OPTIONS = RangedHash.new(
        %w(
          Artist Assassin Beggar Craftsman Dancer Eunuch Foreigner Harlot
          Merchant Noble Peasant Pirate Poet Priest Scholar Servant Slave
          Sorcerer Thief Warrior
        ).freeze
      )
    end

    class Place < Table
      OPTIONS = RangedHash.new(
        %w(
          Abyss Bazaar Brothel Catacombs Cavern Fortress Garden Island Mansion
          Mountain Oasis Palace Pool Prison Sanctuary Shrine Storehouse Tomb
          Tower Valley
        ).freeze
      )
    end

    class Thing < Table
      OPTIONS = RangedHash.new(
        %w(
          Bottle Chest Cloak Crown Crystal Dagger Helm Idol Jewel Lens Mask
          Meteorite Ring Sarcophagus Scroll Seal Skull Sword Tablet Tome
        )
      )
    end
  end
end
