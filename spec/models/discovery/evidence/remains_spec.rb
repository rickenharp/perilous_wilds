require 'roda_helper'

RSpec.describe Discovery::Evidence::Remains do
  it_behaves_like 'a random element'

  it 'has Age detail' do
    expect(subject.details).to include('Age')
    expect(subject.details['Age']).to be_a(Details::Age)
  end
end
