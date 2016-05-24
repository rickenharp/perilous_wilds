require 'adventure'

class Adventure
  class Hook < Table
    OPTIONS = RangedHash.new(
      [
        'Ambushed and left for dead',
        'Arrested and pressed into service',
        'Asked as a favor',
        'Blackmailed',
        'Cursed by a god',
        'Dared or had courage questioned',
        'Found old map',
        'Geased by a sorcerer',
        'Had a dream or vision',
        'Heard a prophecy',
        'Heard a song or poem',
        'Hired',
        'Lost or shipwrecked',
        'Made a wager',
        'Ordered by a superior',
        'Overheard conversation',
        'Read ancient scroll or tablet',
        'Repaying a debt',
        'Stumbled into situation',
        'Wronged and seeking revenge'
      ].freeze
    )
  end
end
