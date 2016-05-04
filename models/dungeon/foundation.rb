require 'dungeon'
require 'dungeon/foundation/builder'
require 'dungeon/foundation/function'

class Dungeon
  class Foundation
    attr_reader :builder
    attr_reader :function

    def roll
      @builder = Dungeon::Foundation::Builder.new.roll
      @function = Dungeon::Foundation::Function.new.roll
      self
    end
  end
end
