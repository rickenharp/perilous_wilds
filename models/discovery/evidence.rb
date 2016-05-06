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
      self.sub_table = Discovery::Evidence::Tracks.new(random).roll
      'Tracks/Spoor'
    end

    def remains
      self.sub_table = Discovery::Evidence::Remains.new(random).roll
      'Remains/Debris'
    end

    def stash
      self.sub_table = Discovery::Evidence::Stash.new(random).roll
      'Stash/Cache'
    end
  end
end
