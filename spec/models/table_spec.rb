require 'roda_helper'

RSpec.describe Table do
  describe 'single table' do
    class TestTable < Table
      OPTIONS = RangedHash.new(
        %w(black white).freeze
      )
    end

    subject(:test_table) { TestTable.new }

    it 'returns a random element' do
      expect(%w(black white)).to include(test_table.to_s)
    end

    it 'elements returns itself' do
      expect(subject.elements).to eq [subject]
    end
  end

  describe 'sub-tables' do
    subject(:test_table) { TopTable.new(7) }

    class TopTable < Table
      OPTIONS = RangedHash.new(
        (1..5) => '<%= sub_table_one %>',
        (6..10) => '<%= sub_table_two %>'
      )

      private

      def sub_table_one
        self.sub_element = SubTableOne.new(2)
        'SubTableOne'
      end

      def sub_table_two
        self.sub_element = SubTableTwo.new(2)
        'SubTableTwo'
      end
    end

    class SubTableOne < Table
      OPTIONS = RangedHash.new(
        %w(one two)
      )
    end

    class SubTableTwo < Table
      OPTIONS = RangedHash.new(
        %w(three four)
      )
    end

    it 'elements returns itself and all subtables' do
      elements = test_table.elements
      expect(elements.size).to eq 2
      expect(elements.map(&:to_s)).to eq %w(SubTableTwo four)
      expect(elements.last).to be_a SubTableTwo
    end
  end
end
