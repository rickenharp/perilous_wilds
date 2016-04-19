require 'models/random_element'

class Discovery < RandomElement
  class UnnaturalFeature < RandomElement
    OPTIONS = RangedHash.new(
      (1..9) => '<%= arcane %>',
      (10..11) => '<%= planar %>',
      (12..12) => '<%= divine %>'
    ).freeze

    private

    def arcane
      self.sub_element = Arcane.new
      'Arcane'
      # @arcane ||= "Arcane<br/>#{Arcane.new}"
    end

    def planar
      self.sub_element = Planar.new
      'Planar'
      # @planar ||= "Planar<br />#{Planar.new}"
    end

    def divine
      self.sub_element = Divine.new
      'Divine'
      # @divine ||= "Divine<br />#{Divine.new}"
    end
  end
end
