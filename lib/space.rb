class Space
  def self.create(name:, description:)
    connection = PG.connect(dbname: 'makers_bnb')
  
    connection.exec("INSERT INTO spaces (name) VALUES('#{name}')")
    # connection.exec("INSERT INTO spaces (description) VALUES('#{description}')")
  end
end