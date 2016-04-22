require 'roda_helper'

RSpec.describe Table do
  describe 'single table' do
    class TestTable < Table
      OPTIONS = RangedHash.new(
        %w(black white).freeze
      )
    end

    subject(:test_table) { TestTable.new.roll }

    it 'returns a random table' do
      expect(%w(black white)).to include(test_table.to_s)
    end

    it 'elements returns itself' do
      expect(subject.elements).to eq [subject]
    end

    it '#add_detail' do
      test_table.add_detail('Foo', 'Bar')
      expect(test_table.details).to eq('Foo' => 'Bar')
    end

    it 'calls the add_details callback' do
      class HookTable < Table
        OPTIONS = RangedHash.new(
          %w(black white).freeze
        )

        def add_details
          raise 'HOOKED!'
        end
      end

      expect { HookTable.new.roll }.to raise_error('HOOKED!')
    end
  end

  describe 'sub-tables' do
    subject(:test_table) { TopTable.new.roll(7) }

    class TopTable < Table
      OPTIONS = RangedHash.new(
        (1..5) => '<%= sub_table_one %>',
        (6..10) => '<%= sub_table_two %>'
      )

      private

      def sub_table_one
        self.sub_table = SubTableOne.new.roll(2)
        'SubTableOne'
      end

      def sub_table_two
        self.sub_table = SubTableTwo.new.roll(2)
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

      def initialize(*)
        super
        details[:foo] = 'bar'
      end
    end

    it 'elements returns itself and all subtables' do
      elements = test_table.elements
      expect(elements.size).to eq 2
      expect(elements.map(&:to_s)).to eq %w(SubTableTwo four)
      expect(elements.last).to be_a SubTableTwo
    end

    it 'details merge details from subtables' do
      expect(test_table.details).to eq(foo: 'bar')
    end
  end
end
