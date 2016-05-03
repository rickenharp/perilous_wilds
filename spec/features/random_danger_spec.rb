require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it ' a random danger' do
    seed = Base58.encode(1338)
    visit "/discovery?seed=#{seed}"

    expect(page).to have_content('Unnatural Feature')
    expect(page).to have_content('Arcane')
    expect(page).to have_content('blight')
  end

  it 'links to danger' do
    visit '/'
    click_on 'Random danger'

    expect(page).to have_content('Danger')
  end

  it 'has a share link' do
    visit '/danger'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
