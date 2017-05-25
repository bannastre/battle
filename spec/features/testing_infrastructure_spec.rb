require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    visit '/'
    fill_in "player1", :with => "Sally"
    fill_in "player2", :with => "Geoff"
    click_button "Fight!"
    expect(page).to have_content("Sally vs Geoff")
  end

  scenario 'Player 1 can see Player 2 hit points' do
    visit '/'
    fill_in "player1", :with => "Sally"
    fill_in "player2", :with => "Geoff"
    click_button "Fight!"
    expect(page).to have_content("60/60 HP")
  end
end
