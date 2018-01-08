require_relative '../lib/operations.rb'
require_relative '../lib/person.rb'
require_relative '../lib/account.rb'
require_relative '../lib/car.rb'
require_relative '../lib/renting.rb'

RSpec.describe 'Operation' do
  subject(:operations) { Operations.new }

  context '#add_person' do
    it 'correctly adds a new person' do
      name = 'Jan'
      lastname = 'Kowalski'
      phone = '123456789'
      expect { operations.add_person(name, lastname, phone) }.not_to raise_error
    end
  end
  context '#add_account' do
    it 'correctly adds a new account' do
      login = 'jkowalski'
      email = 'jkowalski@gmail.com'
      name = 'Jan'
      lastname = 'Kowalski'
      phone = '123456789'
      person = double('Person', id: 0, name: name, lastname: lastname, phone: phone)
      expect { operations.add_account(login, email, person) }.not_to raise_error
    end
  end
end
