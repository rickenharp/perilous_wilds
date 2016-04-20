class Creature < Table
  OPTIONS = RangedHash.new({
    (1..4) => '<%= beast %>',
    (5..6) => '<%= human %>',
    (7..8) => '<%= humanoid %>',
    (9..12) => '<%= monster %>'
  }.freeze)

  private

  def beast
    self.sub_table = Beast.new
    'Beast'
  end

  def human
    add_detail('Activity', Details::Activity.new)
    add_detail('Alignment', Details::Alignment.new)
    'Human'
  end

  def humanoid
    self.sub_table = Humanoid.new
    'Humanoid'
  end

  def monster
    self.sub_table = Monster.new
    'Monster'
  end
end
