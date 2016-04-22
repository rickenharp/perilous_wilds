require 'ranged_hash'
require 'tilt/erb'

class Table
  attr_accessor :sub_table

  def initialize(number = nil)
    @details = {}
    last_index = self.class::OPTIONS.max
    @number = number || rand(1..last_index)
    template_string = self.class::OPTIONS[@number]
    @value = Tilt::ERBTemplate.new { template_string }.render(self)
    add_details
  end

  def to_s
    @value
  end

  def details
    return @details unless sub_table
    @details.merge(sub_table.details)
  end

  def add_detail(name, detail)
    @details[name] = detail
  end

  def elements
    return [self] unless sub_table
    [self] + sub_table.elements
  end

  def add_details
  end

  private

  def d(max, addition = 0)
    rand(1..max) + addition
  end
end
