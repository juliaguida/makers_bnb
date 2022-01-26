require 'space'

describe '.all' do
  it 'lists all the spaces' do 
    connection = PG.connect(dbname:'makers_bnb_test')
        
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Three bed house', 'Summer house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('Two bed luxury house', 'Koala house');")
    connection.exec("INSERT INTO spaces (description, name) VALUES ('One bed cosy house', 'Penelope house');")
        
    spaces = Space.all
        
    expect(spaces).to eq(
      [
        {description: "Three bed house", name: "Summer house"},
        {description: "Two bed luxury house", name: "Koala house"},
        {description: "One bed cosy house", name: "Penelope house"}
      ]
    )
  end
end