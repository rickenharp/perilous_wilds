require 'roda_helper'

RSpec.describe "The app", type: :feature do
  it 'returns a random discovery' do
    Kernel.srand(1338)

    visit '/'
    click_on 'Random discovery'

    expect(page).to have_content('Unnatural Feature')
  end
end
