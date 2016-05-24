require 'adventure'

class Adventure
  class Ally < Table
    OPTIONS = RangedHash.new(
      [
        'Aged warrior seeking one last battle',
        'Charismatic leader of a slave revolt',
        'Demon seeking the soul of antagonist',
        'Disgruntled servant of antagonist',
        'Escaped prisoner',
        'Friendly witch',
        'Honorable captain of the guard',
        'Local ruler whose throne was usurped',
        'Naïve and virtuous young warrior',
        'Priest who speaks for the gods',
        'Rival of antagonist',
        'Rogue adventurer seeking the same goal',
        'Strangely intelligent animal',
        'Streetwise urchin',
        'Sybil with an important prophecy',
        'Unworldly scholar with vital information',
        'Vengeful spirit',
        'Victim of antagonist seeking revenge',
        'Villain who wants to be redeemed',
        'Wise sage with useful lore'
      ].freeze
    )
  end
end
