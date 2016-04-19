class RandomElement
  def initialize(number = nil)
    last_index = self.class::OPTIONS.rindex { true }
    @number = number || rand(0..last_index)
  end

  def to_s
    template_string = self.class::OPTIONS[@number]
    Tilt::ERBTemplate.new { template_string }.render(self)
  end
end
