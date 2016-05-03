require 'danger'
require 'danger/hazard/unnatural'
require 'danger/hazard/natural'
require 'danger/hazard/trap'

class Danger < Table
  class Hazard < Table
    OPTIONS = RangedHash.new(
      (1..2) => '<%= unnatural %>',
      (3..10) => '<%= natural %>',
      (11..12) => '<%= trap %>'
    ).freeze

    private

    def unnatural
      self.sub_table = Danger::Hazard::Unnatural.new.roll
      'Unnatural'
    end

    def natural
      self.sub_table = Danger::Hazard::Natural.new.roll
      'Natural'
    end

    def trap
      self.sub_table = Danger::Hazard::Trap.new.roll
      'Trap'
    end
  end
end
