require 'pg'

class Space
  def self.create(name:, description:, price:, date1:, date2:)
    connection = PG.connect(dbname: 'makers_bnb')
  
    connection.exec("INSERT INTO spaces (name, description, price, date1, date2) VALUES('#{name}', '#{description}', #{price}, '#{date1}', '#{date2}')")
   end
  def self.all 

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else 
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM spaces')
    result.map { |space| {name: space['name'], description: space['description'], price: space['price'], date1: space['date1'], date2: space['date2']} }
  end 
end

