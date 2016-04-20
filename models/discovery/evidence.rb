require 'models/table'

class Discovery < Table
  class Evidence < Table
    OPTIONS = RangedHash.new(
      (1..6) => '<%= tracks %>',
      (7..10) => '<%= remains %>',
      (11..12) => '<%= stash %>'
    ).freeze

    private

    def tracks
      self.sub_element = Tracks.new
      'Tracks/Spoor'
      # @tracks ||= "Tracks/Spoor<br />#{Tracks.new}"
    end

    def remains
      self.sub_element = Remains.new
      'Remains/Debris'
      # @remains ||= "Remains/Debris<br />#{Remains.new}"
    end

    def stash
      self.sub_element = Stash.new
      'Stash/Cache'
      # @stash ||= "Stash/Cache<br />#{Stash.new}"
    end
  end
end
