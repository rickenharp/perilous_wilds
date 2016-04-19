require 'models/random_element'
require 'models/region/adjective'
require 'models/region/noun'
require 'models/region/terrain'
require 'tilt/erb'

class Region < RandomElement
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
    @noun ||= Region::Noun.new
  end

  def terrain
    @terrain ||= Region::Terrain.new
  end

  def adjective
    @adjective ||= Region::Adjective.new
  end
end
