require 'roda_helper'

RSpec.describe Details::Aspect do
  it_behaves_like 'a random element'

  describe 'roll twice' do
    it 'returns a combination of two rolls' do
      oddity = Details::Aspect.new(12)
      expect(oddity.to_s).to include '&'
    end
  end
end
