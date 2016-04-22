require 'roda_helper'

RSpec.describe Details::Oddity do
  it_behaves_like 'a random table'

  describe 'roll twice' do
    it 'returns a combination of two rolls' do
      oddity = Details::Oddity.new.roll(12)
      expect(oddity.to_s).to include '&'
    end
  end
end
