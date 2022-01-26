require 'space'
require 'pg'

describe Space do

  describe '.create' do
    it 'adds a record to the spaces table' do
      Space.create(
       name: "Lovely bungalow",
       description: "A bungalow in Newquay with 5 bedrooms and a pool",
       price: "199.00"
      )

      connection = PG.connect(dbname: 'makers_bnb') 
      result = connection.exec('SELECT * FROM spaces;')
      result.map {|space| space}
      
       
    end
  end

end
