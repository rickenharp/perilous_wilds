require 'creature/beast'
require 'creature/humanoid'
require 'creature/monster'
require 'details/activity'
require 'details/alignment'
require 'details/disposition'
require 'details/number_appearing'

class Creature < Table
  OPTIONS = RangedHash.new({
    (1..4) => '<%= beast %>',
    (5..6) => '<%= human %>',
    (7..8) => '<%= humanoid %>',
    (9..12) => '<%= monster %>'
  }.freeze)

  private

  def beast
    self.sub_table = Creature::Beast.new.roll
    'Beast'
  end

  def human
    add_detail('Activity', Details::Activity.new.roll)
    add_detail('Alignment', Details::Alignment.new.roll)
    add_detail('Disposition', Details::Disposition.new.roll)
    add_detail('No. Appearing', Details::NumberAppearing.new.roll)
    'Human'
  end

  def humanoid
    self.sub_table = Creature::Humanoid.new.roll
    'Humanoid'
  end

  def monster
    self.sub_table = Creature::Monster.new.roll
    'Monster'
  end
end
