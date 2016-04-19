require 'awesome_print'

class RandomElement
  def initialize(number = nil)
    last_index = self.class::OPTIONS.max
    @number = number || rand(1..last_index)
  end

  def to_s
    template_string = self.class::OPTIONS[@number]
    Tilt::ERBTemplate.new { template_string }.render(self)
  end
end
