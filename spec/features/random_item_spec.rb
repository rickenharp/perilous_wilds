require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it 'links to item' do
    visit '/'
    click_on 'Random item'

    expect(page).to have_content('Item')
  end

  it 'returns a random item' do
    seed = Base58.encode(1337)
    visit "/item?seed=#{seed}"

    expect(page).to have_content('armor/shield/helm')
  end
end
