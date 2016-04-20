module Details
  class Oddity < Table
    OPTIONS = RangedHash.new(
      [
        'weird color/smell/sound',
        'geometric',
        'web/network/system',
        'crystalline/glass-like',
        'fungal',
        'gaseous/smokey',
        'mirage/illusion',
        'volcanic/explosive',
        'magnetic/repellant',
        'devoid of life',
        'unexpectedly alive',
        '<%= roll_twice %>'
      ]
    ).freeze

    private

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      "#{Oddity.new(rand(new_range))} & #{Oddity.new(rand(new_range))}"
    end
  end
end
