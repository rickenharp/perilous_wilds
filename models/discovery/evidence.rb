require 'models/random_element'

class Discovery < RandomElement
  class Evidence < RandomElement
    OPTIONS = RangedHash.new(
      (1..6) => '<%= tracks %>',
      (7..10) => '<%= remains %>',
      (11..12) => '<%= stash %>'
    ).freeze

    private

    def tracks
      @tracks ||= "Tracks/Spoor<br />#{Tracks.new}"
    end

    def remains
      'Remains/Debris'
    end

    def stash
      'Stash/Cache'
    end
  end
end
