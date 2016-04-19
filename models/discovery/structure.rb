require 'models/random_element'

class Discovery < RandomElement
  class Structure < RandomElement
    OPTIONS = RangedHash.new(
      (1..1) => '<%= enigmatic %>',
      (2..3) => '<%= infrastructure %>',
      (4..4) => '<%= dwelling %>',
      (5..6) => '<%= burial %>',
      (7..8) => '<%= steading %>',
      (9..12) => '<%= ruin %>'
    ).freeze

    private

    def enigmatic
      'Enigmatic'
    end

    def infrastructure
      'Infrastructure'
    end

    def dwelling
      'Dwelling'
    end

    def burial
      'Burial/Religious'
    end

    def steading
      'Steading'
    end

    def ruin
      'Ruin'
    end
  end
end
