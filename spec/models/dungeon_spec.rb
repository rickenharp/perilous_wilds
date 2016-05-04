require 'roda_helper'

RSpec.describe Dungeon do
  describe '#size' do
    it 'has a size' do
      expect(subject.roll.size).to be_a Dungeon::Size
    end
  end

  describe '#foundation' do
    it 'has a foundation' do
      expect(subject.roll.foundation).to be_a Dungeon::Foundation
    end
  end

  describe '#ruination' do
    it 'has a ruination' do
      expect(subject.roll.ruination).to be_a Details::Ruination
    end
  end

  describe '#themes' do
    it 'has themes' do
      expect(subject.roll.themes).to be_a(Array)
    end
  end
end
