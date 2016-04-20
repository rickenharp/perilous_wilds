require 'awesome_print'

class Table
  attr_accessor :sub_element
  attr_accessor :details

  def initialize(number = nil)
    @details = {}
    last_index = self.class::OPTIONS.max
    @number = number || rand(1..last_index)
    template_string = self.class::OPTIONS[@number]
    @value = Tilt::ERBTemplate.new { template_string }.render(self)
  end

  def to_s
    @value
  end

  def elements
    return [self] unless sub_element
    [self] + sub_element.elements
  end

  private

  def d(max, addition)
    rand(1..max) + addition
  end
end
