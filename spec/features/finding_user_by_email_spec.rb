feature "finding user by email" do
  scenario "find a record based on the email provided" do
    visit ('/sessions/new')
    fill_in('email', with: 'peppapig@outlook.com')
    fill_in('password', with: 'george123')
    click_button('Login')
    # expect(page).to have_content 'Log in to MakersBnB'
    # expect(page).to have_content 'peppapig@outlook.com'
    # expect(page).to have_content 'harrypotter@gmail.com'
    # expect(page).to have_content 'jonsnow@hotmail.com'
    expect(page).to have_content 'Book a Space'
  end 
end 