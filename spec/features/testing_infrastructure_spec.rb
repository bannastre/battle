require '../app.rb'

# describe Battle, :type => :feature do
#   it 'checks that the Testing Infrastructure working' do
#     visit '/'
#     expect(page).to have_content 'Testing Infrastructure working'
#   end
# end

feature 'Testing Infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
      expect(page).to have_content 'Testing Infrastructure working'
  end
end
