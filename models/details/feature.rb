module Details
  class Feature < Table
    OPTIONS = RangedHash.new(
      (1..1) => 'heavily armored',
      (2..3) => 'winged/flying',
      (4..4) => 'multiple heads/headless',
      (5..5) => 'many eyes/one eye',
      (6..6) => 'many limbs/tails',
      (7..7) => 'tentacles/tendrils',
      (8..8) => '<%= aspect %>',
      (9..9) => '<%= element %>',
      (10..10) => '<%= magic_type %>',
      (11..11) => '<%= oddity %>',
      (12..12) => '<%= roll_twice %>'
    ).freeze

    def aspect
      @aspect ||= "#{Details::Aspect.new(random).roll}"
    end

    def element
      @element ||= "#{Details::Element.new(random).roll}"
    end

    def magic_type
      @magic_type ||= "#{Details::MagicType.new(random).roll}"
    end

    def oddity
      @oddity ||= "#{Details::Oddity.new(random).roll}"
    end

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      @both ||= Array.new(2) { Feature.new(random).roll(random.rand(new_range)) }
      self.sub_table = @both.collect(&:sub_table).uniq.first
      @both.join(' & ')
    end
  end
end
