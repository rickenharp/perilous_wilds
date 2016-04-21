require 'roda_helper'

RSpec.describe Discovery::Structure::Burial do
  it_behaves_like 'a random element'

  it 'has Creature responsible detail' do
    expect(subject.details).to include('Creature responsible')
    expect(subject.details['Creature responsible']).to_not be_nil
  end
end
