require 'roda_helper'

RSpec.describe Dungeon::Size do
  it_behaves_like 'a random table'
  subject(:dungeon) { Dungeon::Size.new.roll }

  describe '#themes' do
    it 'returns the number of themes' do
      expect(dungeon.themes).to be_a Integer
    end
  end

  describe '#areas' do
    it 'returns the number of areas' do
      expect(dungeon.areas).to be_a Integer
    end
  end
end
