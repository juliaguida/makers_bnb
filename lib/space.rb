require 'pg'

class Space
  def self.all 

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else 
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM spaces')
    result.map { |space| {name: space['name'], description: space['description']} }
  end 
end
