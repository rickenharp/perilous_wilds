require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it 'returns a random creature' do
    Kernel.srand(1337)

    visit '/'
    click_on 'Random creature'

    expect(page).to have_content('Humanoid')
  end
end
