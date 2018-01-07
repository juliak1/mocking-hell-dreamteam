require_relative '../lib/car.rb'

RSpec.describe 'Car' do
  context '#new' do
    let(:id) { 1 }
    let(:brand) { double('Brand', brand: 'Peugeot') }
    let(:model) { double('Model', model: '206') }
    let(:price) { double('Price', price: '50') }
    subject(:car) { Car.new id, brand, model, price }

    it 'creates a new car' do
      expect { car }.not_to raise_error
    end

    it 'returns Car type' do
      allow(car).to receive(:kind_of?).and_return(Car)
      expect(car).to be_a_kind_of(Car)
    end

    it 'returns correct id' do
      expect(car.id).to eq(id)
    end

    it 'returns correct brand' do
      expect(car.brand).to eq(brand)
    end

    it 'returns correct model' do
      expect(car.model).to eq(model)
    end

    it 'returns correct price' do
      expect(car.price).to eq(price)
    end
  end

  context '#calc_total_price' do
    let(:days) { '7' }
    subject(:car) { Car.new 1, 'Peugeot', '206', '50' }

    it 'returns correctly calculated total price of renting a car' do
      expect(car.total_price(days)).to be_a(Integer).and eq(350)
    end
  end

  context '#to_s' do
    subject(:car) { Car.new 1, 'Peugeot', '206', '50' }

    it 'returns correct output' do
      expect(car.to_s).to be_a(String).and include('Peugeot 206 50')
    end
  end
end
