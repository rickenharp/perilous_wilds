require 'dungeon'
require 'dungeon/foundation/builder'
require 'dungeon/foundation/function'

class Dungeon
  class Foundation
    attr_reader :builder
    attr_reader :function
    attr_reader :random

    def initialize(random = Random.new)
      @random = random
    end

    def roll
      @builder = Dungeon::Foundation::Builder.new(random).roll
      @function = Dungeon::Foundation::Function.new(random).roll
      self
    end
  end
end
