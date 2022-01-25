feature 'viewing all spaces' do
  scenario 'So we can view all descriptions of spaces' do
    visit ('/spaces')
    expect(page).to have_content 'Three bed house'
    expect(page).to have_content 'Two bed luxury house'
    expect(page).to have_content 'One bed cosy house'
    expect(page).to have_content 'Summer House'
    expect(page).to have_content 'Koala House'
    expect(page).to have_content 'Penelope House'
  end
end
