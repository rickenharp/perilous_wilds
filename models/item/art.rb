class Item < RandomElement
  class Art < RandomElement
    OPTIONS = RangedHash.new(
      %w(
        trinket/charm painting/pottery ring/gloves carpet/tapestry
        statuette/idol flag/banner bracelet/armband necklace/amulet belt/harness
        hat/mask orb/sigil/rod crown/scepter
      )
    ).freeze
  end
end
