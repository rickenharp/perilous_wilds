require 'adventure'

class Adventure
  class Twist < Table
    OPTIONS = RangedHash.new(
      [
        'Adventure locale is a Potemkin village and supposed mission assigned to PCs is a sinister experiment',
        'Antagonist is a PC from another time or reality',
        'Antagonist is an ally or friend in disguise',
        'Antagonist is actually pursuing a worthy goal',
        'Antagonist is actually the puppet of another (roll on Antagonist table to determine actual Antagonist)',
        'Apparently mundane is actually supernatural',
        'Apparently supernatural is actually mundane',
        'Betrayal by supposed ally or friend',
        'Distortion of time or space in adventure locale',
        'Entire adventure is actually a delusion or dream',
        'Entire adventure is actually the jest of a mad god',
        'Forced to ally with enemy or rival',
        'Goals and motivations of important NPCs have been misrepresented',
        'Important NPC has a twin brother or sister, leading to mass confusion',
        'Original mission is actually a red herring (roll on Mission table to determine actual mission)',
        'Original mission is actually a trap and actual mission is to survive and escape',
        'Original mission is actually a wild goose chase, and new mission is revenge on perpetrator',
        'Portion of adventure is a wild goose chase',
        'Portion of adventure is actually a delusion or dream',
        'Success in mission leads to unexpected and dire consequences'
      ].freeze
    )
  end
end
