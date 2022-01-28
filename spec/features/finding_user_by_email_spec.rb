feature "finding user by email" do
  scenario "find a record based on the email provided" do
    connection = PG.connect(dbname: 'makers_bnb_test')
    visit ('/sessions/new')
    expect(page).to have_content 'Log in to MakersBnB'
    expect(page).to have_content 'peppapig@outlook.com'
    expect(page).to have_content 'harrypotter@gmail.com'
    expect(page).to have_content 'jonsnow@hotmail.com'

  end 
  
end 