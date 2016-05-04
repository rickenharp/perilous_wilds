require 'dungeon/size'
require 'dungeon/foundation'
require 'details/ruination'
require 'dungeon/theme'

class Dungeon
  attr_reader :size
  attr_reader :foundation
  attr_reader :ruination
  attr_reader :themes

  def roll
    @size = Dungeon::Size.new.roll
    @foundation = Dungeon::Foundation.new.roll
    @ruination = Details::Ruination.new.roll
    @themes = roll_themes
    self
  end

  private

  def roll_themes
    themes = []
    while themes.size < size.themes
      new_theme = Dungeon::Theme.new.roll
      themes << new_theme unless themes.include?(new_theme)
    end
    themes
  end
end
