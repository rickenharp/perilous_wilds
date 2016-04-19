class Discovery < RandomElement
  OPTIONS = RangedHash.new({
    (1..1) => '<%= unnatural_feature %>',
    (2..4) => '<%= natural_feature %>',
    (5..6) => '<%= evidence %>',
    (7..8) => '<%= creature %>',
    (9..12) => '<%= structure %>'
  }.freeze)

  def unnatural_feature
    @unnatural_feature ||= "Unnatural Feature<br />#{UnnaturalFeature.new}"
  end

  def natural_feature
    'Natural Feature'
    # @art_item ||= Art.new
  end

  def evidence
    'Evidence'
  end

  def creature
    'Creature'
  end

  def structure
    'Structure'
  end
end
