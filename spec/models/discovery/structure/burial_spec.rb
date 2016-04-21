require 'roda_helper'

RSpec.describe Discovery::Structure::Burial do
  it_behaves_like 'a random element'

  it 'has Creature responsible detail' do
    expect(subject.details).to include('Creature responsible')
    expect(subject.details['Creature responsible']).to_not be_nil
  end

  it 'has Alignment detail' do
    expect(subject.details).to include('Alignment')
    expect(subject.details['Alignment']).to be_a(Details::Alignment)
  end

  it 'has Aspect detail' do
    expect(subject.details).to include('Aspect')
    expect(subject.details['Aspect']).to be_a(Details::Aspect)
  end
end
