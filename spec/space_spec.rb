require 'space'
require 'pg'

describe Space do

  describe '.create' do
    it 'adds a record to the spaces table' do
      Space.create(
       name: "Lovely bungalow",
       description: "A bungalow in Newquay with 5 bedrooms and a pool",
       price: 199.00,
       date1: "2022/01/26",
       date2: "2022/01/27",
       url: "https://www.freedomholidays.com/_common/updateable/images/property/la-place-cottages2_640x4803a3cc3da6a.jpg?v=100537"
      )

      connection = PG.connect(dbname: 'makers_bnb_test') 
      result = connection.exec('SELECT * FROM spaces;')
      result.map {|space| space}
      
       
    end
  end

describe '.all' do
  it 'lists all the spaces' do 
    connection = PG.connect(dbname:'makers_bnb_test')
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2, url) VALUES ('Three bed house', 'Summer house', '100', '2022-01-26', '2022-01-27', 'www.google.com');")
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2, url) VALUES ('Two bed luxury house', 'Koala house', '200', '2022-01-26', '2022-01-27', 'www.amazon.com');")
    connection.exec("INSERT INTO spaces (description, name, price, date1, date2, url) VALUES ('One bed cosy house', 'Penelope house', '150', '2022-01-26', '2022-01-27', 'www.makers.com');")
        
    spaces = Space.all
        
    expect(spaces).to eq(
      [
        {description: "Three bed house", name: "Summer house", price: '100', date1: '2022-01-26', date2: '2022-01-27', url: "www.google.com"},
        {description: "Two bed luxury house", name: "Koala house", price: '200', date1: '2022-01-26', date2: '2022-01-27', url: "www.amazon.com"},
        {description: "One bed cosy house", name: "Penelope house", price: '150', date1: '2022-01-26', date2: '2022-01-27', url: "www.makers.com"}
      ]
    )
  end
end
end
