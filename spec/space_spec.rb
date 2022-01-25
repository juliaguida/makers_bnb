require 'space'
require 'pg'

describe Space do

  describe '.create' do
    it 'adds a record to the spaces table' do
      Space.create(
       name: "Lovely bungalow",
       description: "A bungalow in Newquay with 5 bedrooms and a pool"
      )

      connection = PG.connect(dbname: 'makers_bnb') 
      result = connection.exec('SELECT * FROM spaces;')
      p result
      # assert that the above info is stored in the spaces table
    end
  end

end
