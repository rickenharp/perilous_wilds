require 'roda_helper'

RSpec.describe Adventure do
  describe '#title' do
    it 'has a title' do
      expect(subject.roll.title).to be_a Adventure::Title
    end
  end

  describe '#mission' do
    it 'has a mission' do
      expect(subject.roll.mission).to be_a Adventure::Mission
    end
  end

  describe '#hook' do
    it 'has a hook' do
      expect(subject.roll.hook).to be_a Adventure::Hook
    end
  end

  describe '#antagonist' do
    it 'has an antagonist' do
      expect(subject.roll.antagonist).to be_a Adventure::Antagonist
    end
  end

  describe '#ally' do
    it 'has an ally' do
      expect(subject.roll.ally).to be_a Adventure::Ally
    end
  end

  describe '#complication' do
    it 'has a complication' do
      expect(subject.roll.complication).to be_a Adventure::Complication
    end
  end

  describe '#obstacle' do
    it 'has an obstacle' do
      expect(subject.roll.obstacle).to be_a Adventure::Obstacle
    end
  end

  describe '#twist' do
    it 'has a twist' do
      expect(subject.roll.twist).to be_a Adventure::Twist
    end
  end

  describe '#reward' do
    it 'has an reward' do
      expect(subject.roll.reward).to be_a Adventure::Reward
    end
  end
end
