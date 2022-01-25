feature 'viewing all spaces' do
  scenario 'So we can view all spaces available' do
    visit ('/spaces')
    expect(page).to have_content description: 'Three bed house', name: 'Summer House'
    expect(page).to have_content description: 'Two bed luxury house', name: 'Koala House'
    expect(page).to have_content description: 'One bed cosy house', name: 'Penelope House'
  end
end
