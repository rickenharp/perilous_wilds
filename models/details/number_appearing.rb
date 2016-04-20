module Details
  class NumberAppearing < Table
    OPTIONS = RangedHash.new(
      (1..4) => 'solitary (1)',
      (5..9) => '<%= group %>',
      (10..12) => '<%= horde %>'
    ).freeze

    def group
      @group ||= "Group (#{d(6, +2)})"
    end

    def horde
      @horde ||= "Horde (#{d(6) + d(6) + d(6) + d(6)} per wave)"
    end
  end
end
