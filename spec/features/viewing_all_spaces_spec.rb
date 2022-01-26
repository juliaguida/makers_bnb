feature 'viewing all spaces' do
      
  scenario 'So we can view all descriptions of spaces' do
    connection = PG.connect(dbname: 'makers_bnb_test')
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Three bed house', 'Summer house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Two bed luxury house', 'Koala house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('One bed cosy house', 'Penelope house');")
    visit ('/spaces')

    expect(page).to have_content 'Three bed house'
    expect(page).to have_content 'Two bed luxury house'
    expect(page).to have_content 'One bed cosy house'
    expect(page).to have_content 'Summer house'
    expect(page).to have_content 'Koala house'
    expect(page).to have_content 'Penelope house'
  end
end
