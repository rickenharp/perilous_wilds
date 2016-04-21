require 'roda_helper'

RSpec.describe "The app", type: :feature do
  it 'links to place' do

    visit '/'
    click_on 'Name a place'

    expect(page).to have_content('Random Place')
  end

  it 'returns a random place' do
    visit '/place?seed=1337'

    expect(page).to have_content('The Jagged Spirit')
  end

  it 'has a share link' do
    visit '/place'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
