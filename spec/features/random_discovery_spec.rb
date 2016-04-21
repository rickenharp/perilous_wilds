require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it ' a random discovery' do
    seed = Base58.encode(1338)
    visit "/discovery?seed=#{seed}"

    expect(page).to have_content('Unnatural Feature')
    expect(page).to have_content('Arcane')
    expect(page).to have_content('blight')
  end

  it 'links to discovery' do
    visit '/'
    click_on 'Random discovery'

    expect(page).to have_content('Discovery')
  end

  it 'has a share link' do
    visit '/discovery'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
