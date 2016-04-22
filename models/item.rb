require 'item/utility'
require 'item/art'

class Item < Table
  OPTIONS = RangedHash.new({
    (1..8) => '<%= utility_item %>',
    (9..12) => '<%= art_item %>'
  }.freeze)

  def utility_item
    @utility_item ||= Item::Utility.new
  end

  def art_item
    @art_item ||= Item::Art.new
  end
end
