feature 'creating a new space' do
  scenario 'as a user I can add a space into spaces' do
    visit('/space/new')
    click_button('Submit')

    expect(page).to have_content 'London'
  end 
end