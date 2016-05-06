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
    self.sub_table = Creature::Beast.new(random).roll
    'Beast'
  end

  def human
    add_detail('Activity', Details::Activity.new(random).roll)
    add_detail('Alignment', Details::Alignment.new(random).roll)
    add_detail('Disposition', Details::Disposition.new(random).roll)
    add_detail('No. Appearing', Details::NumberAppearing.new(random).roll)
    'Human'
  end

  def humanoid
    self.sub_table = Creature::Humanoid.new(random).roll
    'Humanoid'
  end

  def monster
    self.sub_table = Creature::Monster.new(random).roll
    'Monster'
  end
end
