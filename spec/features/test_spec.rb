feature 'Viewing home page' do
  scenario 'when there are no users logged in' do
    visit('/') 
    expect(page).to have_content 'Welcome to makersBnB'  
  end
end