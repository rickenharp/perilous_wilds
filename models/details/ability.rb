module Details
  class Ability < Table
    OPTIONS = RangedHash.new(
      [
        'bless/curse',
        'entangle/trap/snare',
        'poison/disease',
        'paralyze/petrify',
        'mimic/camouflage',
        'seduce/hypnotize',
        'dissolve/disintegrate',
        '<%= magic_type %>',
        'drain life/magic',
        '<%= immunity %>',
        'read/control minds',
        '<%= roll_twice %>'
      ]
    ).freeze

    def magic_type
      @magic_type ||= "#{MagicType.new}"
    end

    def immunity
      @immunity ||= "immunity: #{Element.new}"
    end

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      @both ||= Array.new(2) { Ability.new(rand(new_range)) }
      self.sub_table = @both.collect(&:sub_table).uniq.first
      @both.join(' & ')
    end
  end
end
