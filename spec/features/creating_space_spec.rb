feature 'creating a new space' do
  scenario 'as a user I can add a space into spaces' do
    visit('/spaces/new')
    fill_in('name', with: 'cottage')
    fill_in('description', with: '2 bedrooms')
    fill_in('price', with: 199.00)
    fill_in('date1', with: "2022/01/26")
    fill_in('date2', with: "2022/01/27")
    click_button('List my space')
    expect(page).to have_content 'Your space has been created'
    click_button('Ok') 
    expect(page).to have_current_path('/spaces')
  end 
end