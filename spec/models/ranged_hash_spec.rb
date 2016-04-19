require 'roda_helper'

RSpec.describe RangedHash do
  describe '#initialize' do
    it 'converts an array into single int hash' do
      array = ['one', 'two', 'three']
      rh = RangedHash.new(array)
      expect(rh[3]).to eq 'three'
    end
  end

  describe '#[]' do
    it 'returns the value where the key range covers key' do
      rh = RangedHash.new((0..5) => 'low', (6..10) => 'high')
      expect(rh[3]).to eq 'low'
      expect(rh[9]).to eq 'high'
      expect(rh[11]).to be_nil
    end

    it 'works with simple ints as keys' do
      rh = RangedHash.new(1 => 'one', 2 => 'two', 3 => 'three')
      expect(rh[1]).to eq 'one'
      expect(rh[3]).to eq 'three'
      expect(rh[5]).to be_nil
    end
  end

  describe '#max' do
    it 'returns the highest key' do
      rh = RangedHash.new((0..5) => 'low', (6..10) => 'high')
      expect(rh.max).to eq 10
    end

    it 'works with simple ints as keys' do
      rh = RangedHash.new(1 => 'one', 2 => 'two', 3 => 'three')
      expect(rh.max).to eq 3
    end
  end

  describe '#values' do
    it 'returns the values' do
      rh = RangedHash.new((0..5) => 'low', (6..10) => 'high')
      expect(rh.values).to eq %w(low high)
    end
  end
end
