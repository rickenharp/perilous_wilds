require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it 'links to region' do
    visit '/'
    click_on 'Name a region'

    expect(page).to have_content('Random Region')
  end

  it 'returns a random region' do
    seed = Base58.encode(1337)
    visit "/region?seed=#{seed}"

    expect(page).to have_content('Glittering Steppe of (the) Snake')
  end

  it 'has a share link' do
    visit '/region'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
