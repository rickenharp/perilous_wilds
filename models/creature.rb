class Creature < Table
  OPTIONS = RangedHash.new({
    (1..4) => '<%= beast %>',
    (5..6) => '<%= human %>',
    (7..8) => '<%= humanoid %>',
    (9..12) => '<%= monster %>'
  }.freeze)

  private

  def beast
    'Beast'
  end

  def human
    'Human'
  end

  def humanoid
    'Humanoid'
  end

  def monster
    'Monster'
  end
end
