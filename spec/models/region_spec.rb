require 'roda_helper'

RSpec.describe Region do
  it_behaves_like 'a random element'

  describe '#to_s' do
    it 'gets interpolated' do
      expect(subject.to_s).to_not include('<%=')
    end
  end
end
