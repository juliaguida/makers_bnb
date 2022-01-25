require 'pg'

class Space

  def self.all
    connection = PG.connect(dbname: 'makers_bnb')
    result = connection.exec('SELECT * FROM spaces')
    result.map { |space| space['name'] }
  end
end
