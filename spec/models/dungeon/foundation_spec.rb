require 'roda_helper'

RSpec.describe Dungeon::Foundation do
  it 'has a builder' do
    expect(subject.roll.builder).to be_a Dungeon::Foundation::Builder
  end

  it 'has a function' do
    expect(subject.roll.function).to be_a Dungeon::Foundation::Function
  end
end
