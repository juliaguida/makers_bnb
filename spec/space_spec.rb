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
        
    connection.exec("INSERT INTO spaces (description, name, url) VALUES ('Three bed house', 'Summer house', 'www.google.com');")
    connection.exec("INSERT INTO spaces (description, name, url) VALUES ('Two bed luxury house', 'Koala house', 'www.amazon.com');")
    connection.exec("INSERT INTO spaces (description, name, url) VALUES ('One bed cosy house', 'Penelope house', 'www.makers.com');")
        
    spaces = Space.all
        
    expect(spaces).to eq(
      [
        {description: "Three bed house", name: "Summer house", url: "www.google.com"},
        {description: "Two bed luxury house", name: "Koala house", url: "www.amazon.com"},
        {description: "One bed cosy house", name: "Penelope house", url: "www.makers.com"}
      ]
    )
  end
end
end
