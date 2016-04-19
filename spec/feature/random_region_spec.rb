require 'roda_helper'

RSpec.describe "The app", type: :feature do
  it 'returns a random region' do
    Kernel.srand(1337)

    visit '/region'

    expect(page).to have_content('Glittering Steppe of (the) Snake')
  end
end
