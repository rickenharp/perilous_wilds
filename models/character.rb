class Character
  RACES = %w(
    Dragonborn Dwarf Elf Gnome Half-Elf Half-Orc Halfling Human Tiefling Genasi
    Goliath
  ).freeze
  CLASSES = %w(
    Barbarian Bard Cleric Druid Fighter Monk Paladin Ranger Rogue Sorcer Warlock
    Wizard
  ).freeze
  BACKGROUNDS = [
    'Acolyte', 'Charlatan', 'Criminal', 'Entertainer', 'Folk Hero',
    'Guild Artisan', 'Hermit', 'Noble', 'Outlander', 'Sage', 'Sailor',
    'Soldier', 'Urchin'
  ].freeze

  attr_reader :race, :klass, :background

  def roll
    @race = RACES.sample
    @klass = CLASSES.sample
    @background = BACKGROUNDS.sample
    self
  end
end
