require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it ' a random dungeon' do
    seed = Base58.encode(1338)
    visit "/dungeon?seed=#{seed}"

    expect(page).to have_content('small')
    expect(page).to have_content('catfolk/dogfolk')
    # expect(page).to have_content('blight')
  end

  it 'links to dungeon' do
    visit '/'
    click_on 'Random dungeon'

    expect(page).to have_content('Dungeon')
  end

  it 'has a share link' do
    visit '/dungeon'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
