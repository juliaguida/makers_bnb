require 'pg'

class Space
  def self.create(name:, description:, price:, date1:, date2:)
    connection = PG.connect(dbname: 'makers_bnb')
  
    connection.exec("INSERT INTO spaces (name, description, price, date1, date2) VALUES('#{name}', '#{description}', #{price}, '#{date1}', '#{date2}')")
   end
end