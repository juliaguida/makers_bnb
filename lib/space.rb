require 'pg'

class Space
  # attr_reader :spaces, :name, :description

  # def initialize
  #   @spaces = spaces
  #   @name = name
  #   @description = description
  # end
  
  def self.all
    connection = PG.connect(dbname: 'makers_bnb')
    result = connection.exec('SELECT * FROM spaces')
    result.map { |space| {name: space['name'], description: space['description']} }
  end
end
