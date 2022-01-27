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
       date2: "2022/01/27"
      )

      connection = PG.connect(dbname: 'makers_bnb_test') 
      result = connection.exec('SELECT * FROM spaces;')
      result.map {|space| space}
      
       
    end
  end

describe '.all' do
  it 'lists all the spaces' do 
    connection = PG.connect(dbname:'makers_bnb_test')
        
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Three bed house', 'Summer house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Two bed luxury house', 'Koala house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('One bed cosy house', 'Penelope house');")
        
    spaces = Space.all
        
    expect(spaces).to eq(
      [
        {description: "Three bed house", name: "Summer house"},
        {description: "Two bed luxury house", name: "Koala house"},
        {description: "One bed cosy house", name: "Penelope house"}
      ]
    )
  end
end
end
