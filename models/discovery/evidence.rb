require 'discovery/evidence/tracks'
require 'discovery/evidence/remains'
require 'discovery/evidence/stash'

class Discovery < Table
  class Evidence < Table
    OPTIONS = RangedHash.new(
      (1..6) => '<%= tracks %>',
      (7..10) => '<%= remains %>',
      (11..12) => '<%= stash %>'
    ).freeze

    private

    def tracks
      self.sub_table = Tracks.new
      'Tracks/Spoor'
    end

    def remains
      self.sub_table = Remains.new
      'Remains/Debris'
    end

    def stash
      self.sub_table = Stash.new
      'Stash/Cache'
    end
  end
end
