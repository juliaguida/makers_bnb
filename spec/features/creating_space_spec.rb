require 'byebug'
feature 'creating a new space' do
  scenario 'as a user I can add a space into spaces' do
    visit('/spaces/new')
    fill_in('name', with: 'cottage')
    fill_in('description', with: '2 bedrooms')
    fill_in('price', with: 199.00)
    fill_in('date1', with: "2022/01/26")
    fill_in('date2', with: "2022/01/27")
    fill_in('url', with: "https://www.freedomholidays.com/_common/updateable/images/property/la-place-cottages2_640x4803a3cc3da6a.jpg?v=100537")
    click_button('List my space')
    expect(page).to have_content 'Your space has been created'
    click_button('Ok') 
    expect(page).to have_current_path('/spaces')
    expect(page).to have_content('cottage')
    expect(page).to have_content('2 bedrooms')
    image_url = page.find('img')['src']
    expect(image_url).to eq("https://www.freedomholidays.com/_common/updateable/images/property/la-place-cottages2_640x4803a3cc3da6a.jpg?v=100537")
  end 
end