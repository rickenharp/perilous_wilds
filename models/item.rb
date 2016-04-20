class Item < Table
  OPTIONS = RangedHash.new({
    (1..8) => '<%= utility_item %>',
    (9..12) => '<%= art_item %>'
  }.freeze)

  def utility_item
    @utility_item ||= Utility.new
  end

  def art_item
    @art_item ||= Art.new
  end
end
