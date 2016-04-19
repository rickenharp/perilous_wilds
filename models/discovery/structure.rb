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
      @enigmatic ||= "Enigmatic<br />#{Enigmatic.new}"
    end

    def infrastructure
      @infrastructure ||= "Infrastructure<br />#{Infrastructure.new}"
    end

    def dwelling
      @dwelling ||= "Dwelling<br />#{Dwelling.new}"
    end

    def burial
      @burial ||= "Burial/Religious<br />#{Burial.new}"
    end

    def steading
      'Steading'
    end

    def ruin
      'Ruin'
    end
  end
end
