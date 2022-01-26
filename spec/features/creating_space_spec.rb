feature 'creating a new space' do
  scenario 'as a user I can add a space into spaces' do
    visit('/spaces/new')
    fill_in('name', with: 'cottage')
    fill_in('description', with: '2 bedrooms')
    fill_in('price', with: '199.00')
    click_button('List my space')
    
    expect(page).to have_content 'Your space has been created'
  end 
end