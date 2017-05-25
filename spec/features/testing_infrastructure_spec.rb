require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    sign_in_and_play
    expect(page).to have_content("Sally vs Geoff")
  end

  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("60/60 HP")
  end

  scenario 'Player 1 can attack Player 2 and get confirmation' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Sally attacked Geoff')
  end
end
