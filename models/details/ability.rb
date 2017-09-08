require 'details/magic_type'
require 'details/element'
require 'details/ability'

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
      @magic_type ||= "#{Details::MagicType.new(random).roll}"
    end

    def immunity
      @immunity ||= "immunity: #{Details::Element.new(random).roll}"
    end

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      @both ||= Array.new(2) { Ability.new(random).roll(random.rand(new_range)) }
      self.sub_table = @both.collect(&:sub_table).uniq.first
      @both.join(' & ')
    end
  end
end
