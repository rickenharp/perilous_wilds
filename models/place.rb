require 'place/noun'
require 'place/feature'
require 'place/adjective'

class Place < Table
  OPTIONS = RangedHash.new(
    [
      'The <%= feature %>',
      'The <%= adjective %> <%= feature %>',
      'The <%= feature %> of (the) <%= noun %>',
      'The <%= noun %>\'s <%= feature %>',
      '<%= feature %> of the <%= adjective %> <%= noun %>',
      'The <%= adjective %> <%= noun %>'
    ]
  ).freeze

  private

  def noun
    @noun ||= Place::Noun.new(random).roll
  end

  def feature
    @feature ||= Place::Feature.new(random).roll
  end

  def adjective
    @adjective ||= Place::Adjective.new(random).roll
  end
end
