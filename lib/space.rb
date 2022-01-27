require 'pg'

class Space
  def self.create(name:, description:, price:, date1:, date2:, url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else 
      connection = PG.connect(dbname: 'makers_bnb')
    end
    connection.exec("INSERT INTO spaces (name, description, price, date1, date2, url) VALUES('#{name}', '#{description}', #{price}, '#{date1}', '#{date2}', '#{url}')")
   end
  def self.all 

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else 
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM spaces')
    result.map { |space| {name: space['name'], description: space['description'], url: space['url']} }
  end 
end

