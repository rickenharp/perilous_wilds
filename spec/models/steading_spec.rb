require 'roda_helper'

RSpec.describe Steading do
  it_behaves_like 'a random table'

  subject { described_class.new.roll }

  it 'has Built by detail' do
    expect(subject.details).to include('Built by')
    expect(subject.details['Built by']).to_not be_nil
  end
end
