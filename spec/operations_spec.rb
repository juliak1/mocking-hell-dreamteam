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

  context '#add_renting' do
    it 'correctly adds a new renting' do
      date = '2018-01-07'
      days = '5'
      brand = 'Peugeot'
      model = '206'
      price = '50'
      login = 'jkowalski'
      email = 'jkowalski@gmail.com'
      name = 'Jan'
      lastname = 'Kowalski'
      phone = '123456789'
      person = double('Person', id: 0, name: name, lastname: lastname, phone: phone)
      account = double('Account', id: 0, login: login, email: email, person: person)
      car = double('Car', id: 0, brand: brand, model: model, price: price)
      expect { operations.add_renting(date, days, car, account) }.not_to raise_error
    end
  end

  context '#add_car' do
    it 'correctly adds a new car' do
      brand = 'Peugeot'
      model = '206'
      price = '50'
      expect { operations.add_car(brand, model, price) }.not_to raise_error
    end
  end

  context '#show_person' do
    it 'correctly shows person' do
      expect { operations.show_person(0) }.not_to raise_error
    end
    it 'correctly shows name of a person' do
      expect(operations.show_person(0).to_s).to include('Jan')
    end
    it 'does not show a person that does not exist' do
      expect { operations.show_person(2) }.not_to raise_error
    end
  end

  context '#show_all_person' do
    it 'correctly shows all records in person' do
      expect { operations.show_all_person }.not_to raise_error
    end
  end

  context '#show_account' do
    it 'correctly shows account' do
      expect { operations.show_account(0) }.not_to raise_error
    end
    it 'does not show account that does not exist' do
      expect { operations.show_account(2) }.not_to raise_error
    end
  end

  context '#show_all_account' do
    it 'correctly shows all records in account' do
      expect { operations.show_all_account }.not_to raise_error
    end
  end

  context '#show_car' do
    it 'correctly shows car' do
      expect { operations.show_car(0) }.not_to raise_error
    end
    it 'does not show car that does not exist' do
      expect { operations.show_car(2) }.not_to raise_error
    end
  end

  context '#show_all_car' do
    it 'correctly shows all records in car' do
      expect { operations.show_all_car }.not_to raise_error
    end
  end

  context '#show_renting' do
    it 'correctly shows renting' do
      expect { operations.show_renting(0) }.not_to raise_error
    end
    it 'does not show renting that does not exist' do
      expect { operations.show_renting(2) }.not_to raise_error
    end
  end
end
