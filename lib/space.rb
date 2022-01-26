require 'pg'

class Space
  def self.create(name:, description:)
    connection = PG.connect(dbname: 'makers_bnb')
  
    connection.exec("INSERT INTO spaces (name, description, price) VALUES('#{name}', '#{description}', '#{price}')")
   end
end