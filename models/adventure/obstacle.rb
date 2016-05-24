require 'adventure'

class Adventure
  class Obstacle < Table
    OPTIONS = RangedHash.new(
      [
        'Armed guards',
        'Assassins',
        'Bandits or pirates',
        'Concealment, deception, or secrecy',
        'Curse (real or imaginary)',
        'Deadly environment',
        'Dishonesty and greed of populace',
        'Great distance',
        'Inscription that needs translated',
        'Lack of supplies',
        'Limited time',
        'Looming natural or unnatural disaster',
        'Magical wards or guards',
        'Monster',
        'Native cannibals or headhunters',
        'Physical barrier',
        'Riddle that must be solved',
        'Roaming savage beasts',
        'Thieves',
        'Wrong or misleading information'
      ].freeze
    )
  end
end
