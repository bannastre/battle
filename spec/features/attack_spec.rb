require './app.rb'

feature 'Attacking' do

  scenario 'Player 1 can attack Player 2 and get confirmation' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content('Sally attacked Geoff')
  end

  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("60/60 HP")
  end

  scenario "Player 2's hit_points are reduced when attacked" do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content("Geoff: 50/60 HP")
  end

end
