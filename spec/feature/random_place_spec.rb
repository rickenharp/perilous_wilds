require 'roda_helper'

RSpec.describe "The app", type: :feature do
  it 'returns a random place' do
    Kernel.srand(1337)

    visit '/place'

    expect(page).to have_content('The Jagged Spirit')
  end
end
