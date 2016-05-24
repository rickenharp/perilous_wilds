require 'roda_helper'

RSpec.describe 'The app', type: :feature do
  it ' a random adventure' do
    seed = Base58.encode(1338)
    visit "/adventure?seed=#{seed}"

    expect(page).to have_content('Title: Sword of Death')
    expect(page).to have_content('Mission: Escape Fortress')
    expect(page).to have_content('Hook: Had a dream or vision')
    expect(page).to have_content('Antagonist: Sardonic harlequin')
    expect(page).to have_content('Potential Ally: Friendly witch')
    expect(page).to have_content(
      'Complication: Aspiring student or apprentice pesters a PC'
    )
    expect(page).to have_content('Obstacle: Thieves')
    expect(page).to have_content('Twist: Forced to ally with enemy or rival')
    expect(page).to have_content('Reward: Roll three times on this table (reroll any result over 15)')
  end

  it 'links to adventure' do
    visit '/'
    click_on 'Random adventure'

    expect(page).to have_content('Adventure')
  end

  it 'has a share link' do
    visit '/adventure'
    body = page.body

    expect(body).to_not match '\?seed=0"'

    click_on 'Share'
    expect(page.body).to eq body
  end
end
