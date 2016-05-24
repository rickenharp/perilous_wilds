require 'adventure'

class Adventure
  class Antagonist < Table
    OPTIONS = RangedHash.new(
      [
        'Angry ghost',
        'Bandit chieftain',
        'Brutal warlord',
        'Corrupt official',
        'Cult leader',
        'Cunning madman',
        'Debauched noble',
        'Demonized wretch',
        'Depraved monk',
        'Deranged alchemist',
        'Evil sorcerer',
        'Fanatical priest',
        'Greedy merchant',
        'King of thieves',
        'Obsessed scholar',
        'Pirate captain',
        'Ruthless slaver',
        'Sadistic torturer',
        'Sardonic harlequin',
        'Sinister revenant'
      ].freeze
    )
  end
end
