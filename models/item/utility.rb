class Item < RandomElement
  class Utility < RandomElement
    OPTIONS = RangedHash.new(
      %w(
        key/lockpick potion/food clothing/cloak decanter/vessel/cup
        cage/box/coffer instrument/tool book/scroll weapon/staff/wand
        armor/shield/helm mirror/hourglass pet/mount device/construct
      )
    ).freeze
  end
end
