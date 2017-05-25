require './app.rb'

feature 'Start a fight' do
  scenario 'Can enter name and submit' do
    sign_in_and_play
    expect(page).to have_content("Sally vs Geoff")
  end
  
end
