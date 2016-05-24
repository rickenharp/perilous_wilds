require 'adventure'

class Adventure
  class Complication < Table
    OPTIONS = RangedHash.new(
      [
        'Aspiring student or apprentice pesters a PC',
        'Astronomical alignment favors black magic',
        'Disguised sorcerer curses PC',
        'Eclipse or comet provokes outburst of superstitious fear',
        'Escaped slave boy or wench begs refuge',
        'Forgotten crime comes back to haunt a PC',
        'Important NPC under a spell',
        'Invasion or occupation by foreigners',
        'Local festival creates atmosphere of riot and license',
        'Local laws are bizarre and restrictive',
        'Locale suffering from recent earthquake or flood',
        'Money lender comes to collect from a PC',
        'Old rival of a PC becomes involved',
        'PC falsely accused of a capital crime',
        'PC mistaken for someone else',
        'Phobia or taboo of a PC is violated',
        'Plague is spreading in the vicinity',
        'Rebels are plotting to overthrow the government',
        'Spurned lover of a PC looks for revenge',
        'Unwanted suitor falls in love with a PC'
      ].freeze
    )
  end
end
