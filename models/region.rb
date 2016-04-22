require 'region/adjective'
require 'region/noun'
require 'region/terrain'


class Region < Table
  OPTIONS = RangedHash.new(
    [
      '<%= adjective %> <%= terrain %>',
      '<%= terrain %> of (the) <%= noun %>',
      'The <%= adjective %> <%= terrain %>',
      '<%= noun %> <%= terrain %>',
      '<%= noun %>\'s <%= adjective %> <%= terrain %>',
      '<%= adjective %> <%= terrain %> of (the) <%= noun %>'
    ]
  ).freeze

  private

  def noun
    @noun ||= Region::Noun.new.roll
  end

  def terrain
    @terrain ||= Region::Terrain.new.roll
  end

  def adjective
    @adjective ||= Region::Adjective.new.roll
  end
end
