require 'pg'

class User
  def self.create
    # add an entry to the database
  end

  def self.find_by_email
    # find a record based on the email address provided
    connection = PG.connect(dbname:'makers_bnb_test')
    result = connection.exec('SELECT * FROM users')
    # return a hash that represents the user
    p result.map { |user| {email: user['email'], password: user['password']} }

  end
end
