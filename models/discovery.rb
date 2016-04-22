require 'discovery/unnatural_feature'
require 'discovery/natural_feature'
require 'discovery/evidence'
require 'discovery/structure'
require 'creature'

class Discovery < Table
  OPTIONS = RangedHash.new({
    (1..1) => '<%= unnatural_feature %>',
    (2..4) => '<%= natural_feature %>',
    (5..6) => '<%= evidence %>',
    (7..8) => '<%= creature %>',
    (9..12) => '<%= structure %>'
  }.freeze)

  def unnatural_feature
    self.sub_table = Discovery::UnnaturalFeature.new.roll
    'Unnatural Feature'
  end

  def natural_feature
    self.sub_table = Discovery::NaturalFeature.new.roll
    'Natural Feature'
  end

  def evidence
    self.sub_table = Discovery::Evidence.new.roll
    'Evidence'
  end

  def creature
    self.sub_table = ::Creature.new.roll
    'Creature'
  end

  def structure
    self.sub_table = Discovery::Structure.new.roll
    'Structure'
  end
end
