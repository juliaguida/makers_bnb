feature 'viewing all spaces' do
      
  scenario 'So we can view all descriptions of spaces' do
    connection = PG.connect(dbname: 'makers_bnb_test')
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2) VALUES ('Three bed house', 'Summer house', '100', '2022-01-26', '2022-01-27');")
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2) VALUES ('Two bed luxury house', 'Koala house', '200', '2022-01-26', '2022-01-27');")
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2) VALUES ('One bed cosy house', 'Penelope house', '150', '2022-01-26', '2022-01-27');")
    visit ('/spaces')

    expect(page).to have_content 'Three bed house'
    expect(page).to have_content 'Two bed luxury house'
    expect(page).to have_content 'One bed cosy house'
    expect(page).to have_content 'Summer house'
    expect(page).to have_content 'Koala house'
    expect(page).to have_content 'Penelope house'
    expect(page).to have_content '100'
    expect(page).to have_content '200'
    expect(page).to have_content '150'
    expect(page).to have_content '2022-01-26'
    expect(page).to have_content '2022-01-27'
    expect(page).to have_content '2022-01-26'
    expect(page).to have_content '2022-01-27'
    expect(page).to have_content '2022-01-26'
    expect(page).to have_content '2022-01-27'
    click_button('List a Space') 
    expect(page).to have_current_path('/spaces/new')
  end
end
