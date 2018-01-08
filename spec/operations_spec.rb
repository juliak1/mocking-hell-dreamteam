require_relative '../lib/operations.rb'
require_relative '../lib/person.rb'


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
end
