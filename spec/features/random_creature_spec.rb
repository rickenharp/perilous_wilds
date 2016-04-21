require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it 'links to creature' do
    visit '/'
    click_on 'Random creature'

    expect(page).to have_content('Creature')
  end

  it 'returns a random creature' do
    visit '/creature?seed=1337'

    expect(page).to have_content('Humanoid')
    expect(page).to have_content('Uncommon')
    expect(page).to have_content('hopeful')
  end

  it 'has a share link' do
    visit '/creature'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
