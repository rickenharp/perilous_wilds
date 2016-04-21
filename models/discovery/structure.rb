require 'models/table'

class Discovery < Table
  class Structure < Table
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
      self.sub_table = Enigmatic.new
      'Enigmatic'
      # @enigmatic ||= "Enigmatic<br />#{Enigmatic.new}"
    end

    def infrastructure
      self.sub_table = Infrastructure.new
      'Infrastructure'
      # @infrastructure ||= "Infrastructure<br />#{Infrastructure.new}"
    end

    def dwelling
      self.sub_table = Dwelling.new
      'Dwelling'
      # @dwelling ||= "Dwelling<br />#{Dwelling.new}"
    end

    def burial
      self.sub_table = Burial.new
      'Burial/Religious'
      # @burial ||= "Burial/Religious<br />#{Burial.new}"
    end

    def steading
      self.sub_table = Steading.new
      'Steading'
    end

    def ruin
      self.sub_table = Ruin.new
      'Ruin'
      # @ruin ||= "Ruin<br />#{Ruin.new}"
    end
  end
end
