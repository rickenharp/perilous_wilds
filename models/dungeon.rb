require 'dungeon/size'
require 'dungeon/foundation'
require 'details/ruination'
require 'dungeon/theme'

class Dungeon
  attr_reader :size
  attr_reader :foundation
  attr_reader :ruination
  attr_reader :themes
  attr_reader :random

  def initialize(random = Random.new)
    @random = random
  end

  def roll
    @size = Dungeon::Size.new(random).roll
    @foundation = Dungeon::Foundation.new(random).roll
    @ruination = Details::Ruination.new(random).roll
    @themes = roll_themes
    self
  end

  private

  def roll_themes
    themes = []
    while themes.size < size.themes
      new_theme = Dungeon::Theme.new(random).roll
      themes << new_theme unless themes.include?(new_theme)
    end
    themes
  end
end
