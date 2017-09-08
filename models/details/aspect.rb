module Details
  class Aspect < Table
    OPTIONS = RangedHash.new(
      [
        'power/strength',
        'trickery/dexterity',
        'time/constitution',
        'knowledge/intelligence',
        'nature/wisdom',
        'culture/charisma',
        'war/lies/discord',
        'peace/truth/balance',
        'hate/envy',
        'love/admiration',
        '<%= element %>',
        '<%= roll_twice %>'
      ]
    ).freeze

    private

    def element
      # self.sub_table = Details::Element.new(random).roll
      @element ||= "Element (#{Details::Element.new(random).roll})"
    end

    def roll_twice
      new_range = Range.new(1, OPTIONS.max - 1)
      @both ||= Array.new(2) { Aspect.new(random).roll(random.rand(new_range)) }
      self.sub_table = @both.collect(&:sub_table).uniq.first
      @both.join(' & ')
    end
  end
end
