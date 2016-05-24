require 'adventure'

class Adventure
  class Reward < Table
    OPTIONS = RangedHash.new(
      [
        'Clue to another adventure',
        'Desirable lover',
        'Exotic spices or lotuses',
        'Favor of a cult or deity',
        'Favor of powerful NPC',
        'Gold',
        'Loyal henchman',
        'Magical armour, shield, or weapon',
        'Pardon for crimes',
        'Potion or alchemical preparation',
        'Precious jewels',
        'Rare and wondrous steed',
        'Rare furs or silks',
        'Scroll of spells, magic ring, magic wand, or other magic item',
        'Wench or manservant',
        'Roll twice on this table (reroll any result over 15)',
        'Roll three times on this table (reroll any result over 15)',
        'Roll four times on this table (reroll any result over 15)',
        'Roll five times on this table (reroll any result over 15 )',
        'Nothing but their miserable hides'
      ].freeze
    )
  end
end
