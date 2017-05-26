require './app.rb'

feature 'creates a game' do
  scenario 'game is created with 2 players' do
    sign_in_and_play
    
  end
end


require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    sign_in_and_play
    expect(page).to have_content("Sally vs Geoff")
  end
  
end

