require_relative '../lib/renting.rb'

RSpec.describe 'Renting' do
  context '#new' do
    let(:id) { 1 }
    let(:date) { double('Date', date: '2018-01-07') }
    let(:days) { double('Days', days: '5') }
    let(:car) { double('Car', id: 1, brand: 'Peugeot', model: '206', price: '50') }
    let(:account) { double('Account', id: 1, login: 'jkowalski', email: 'jkowalski@gmail.com', person: double('Person', id: 1, name: 'Jan', lastname: 'Kowalski', phone: '123456789')) }
    subject(:renting) { Renting.new id, date, days, car, account }

    it 'creates a new renting' do
      expect { renting }.not_to raise_error
    end

    it 'returns Renting type' do
      allow(renting).to receive(:kind_of?).and_return(Renting)
      expect(renting).to be_a_kind_of(Renting)
    end

    it 'returns correct id' do
      expect(renting.id).to eq(id)
    end

    it 'returns correct date' do
      expect(renting.date).to eq(date)
      expect(renting.date.to_s).to be_a(String).and include(date.to_s)
    end

    it 'returns correct days' do
      expect(renting.days).to eq(days)
      expect(renting.days.to_s).to be_a(String).and include(days.to_s)
    end

    it 'returns correct car' do
      expect(renting.car).to eq(car)
      allow(car).to receive(:kind_of?).and_return(Car)
      expect(renting.car).to be_a_kind_of(Car)
      expect(renting.car.to_s).to be_a(String).and include(car.to_s)
    end

    it 'returns correct account' do
      expect(renting.account).to eq(account)
      allow(account).to receive(:kind_of?).and_return(Account)
      expect(renting.account).to be_a_kind_of(Account)
      expect(renting.account.to_s).to be_a(String).and include(account.to_s)
    end
  end
  context '#to_s' do
    let(:id) { 1 }
    let(:date) { double('Date', date: '2018-01-07') }
    let(:days) { double('Days', days: '5') }
    let(:car) { double('Car', id: 1, brand: 'Peugeot', model: '206', price: '50') }
    let(:account) { double('Account', id: 1, login: 'jkowalski', email: 'jkowalski@gmail.com', person: double('Person', id: 1, name: 'Jan', lastname: 'Kowalski', phone: '123456789')) }
    subject(:renting) { Renting.new id, date, days, car, account }

    it 'returns correct output' do
      expect(renting.to_s).to be_a(String).and include(date.to_s, days.to_s, car.to_s, account.to_s)
    end
  end
end
