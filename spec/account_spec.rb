require_relative '../lib/account.rb'

RSpec.describe 'Account' do
  context '#new' do
    let(:id) { 1 }
    let(:login) { double('Login', login: 'jkowalski') }
    let(:email) { double('Email', email: 'jkowalski@gmail.com') }
    let(:person) { double('Person', id: 1, name: 'Jan', lastname: 'Kowalski', age: '21', phone: '123456789') }
    subject(:account) { Account.new id, login, email, person }

    it 'creates a new account' do
      expect { account }.not_to raise_error
    end

    it 'returns Account type' do
      allow(account).to receive(:kind_of?).and_return(Account)
      expect(account).to be_a_kind_of(Account)
    end

    it 'returns correct id' do
      expect(account.id).to eq(id)
    end

    it 'returns correct login' do
      expect(account.login).to eq(login)
      expect(account.login.to_s).to be_a(String).and include(login.to_s)
    end

    it 'returns correct email' do
      expect(account.email).to eq(email)
      expect(account.email.to_s).to be_a(String).and include(email.to_s)
    end

    it 'returns correct person' do
      expect(account.person).to eq(person)
      allow(person).to receive(:kind_of?).and_return(Person)
      expect(account.person).to be_a_kind_of(Person)
      expect(account.person.to_s).to be_a(String).and include(person.to_s)
    end
  end
  context '#to_s' do
    let(:id) { 1 }
    let(:login) { double('Login', login: 'jkowalski') }
    let(:email) { double('Email', email: 'jkowalski@gmail.com') }
    let(:person) { double('Person', id: 1, name: 'Jan', lastname: 'Kowalski', age: '21', phone: '123456789') }
    subject(:account) { Account.new id, login, email, person }

    it 'returns correct output' do
      expect(account.to_s).to be_a(String).and include(login.to_s, email.to_s, person.to_s)
    end
  end
end
