require 'user'

describe User do
  describe '.create' do
    it 'adds an entry to the users table' do
    end
  end

    describe '.find_by_email' do
      it 'finds a user record based on the email address provided' do
        correct_user = User.find_by_email('peppapig@outlook.com', 'george123')

        expect(correct_user.id).to eq user.id
      end
    end
end