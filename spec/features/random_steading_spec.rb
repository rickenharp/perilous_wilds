require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it 'links to steading' do
    visit '/'
    click_on 'Random steading'

    expect(page).to have_content('Random Steading')
  end

  it 'returns a random steading' do
    seed = Base58.encode(1337)
    visit "/steading?seed=#{seed}"

    expect(page).to have_content('Town')
  end

  it 'has a share link' do
    visit '/steading'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
