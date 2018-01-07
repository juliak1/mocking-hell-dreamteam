require_relative '../lib/employee.rb'

RSpec.describe 'Employee' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { double('Name', name: 'Marek') }
    let(:lastname) { double('Lastname', lastname: 'Nowak') }
    let(:phone) { double('Phone', phone: '987654321') }
    subject(:employee) { Employee.new id, name, lastname, phone }

    it 'creates a new employee' do
      expect { employee }.not_to raise_error
    end

    it 'returns Employee type' do
      allow(employee).to receive(:kind_of?).and_return(Employee)
      expect(employee).to be_a_kind_of(Employee)
    end

    it 'returns correct id' do
      expect(employee.id).to eq(id)
    end

    it 'returns correct name' do
      expect(employee.name).to eq(name)
    end

    it 'returns correct lastname' do
      expect(employee.lastname).to eq(lastname)
    end

    it 'returns correct phone' do
      expect(employee.phone).to eq(phone)
    end
  end

  context '#to_s' do
    subject(:employee) { Employee.new 1, 'Marek', 'Nowak', '987654321' }

    it 'returns correct output' do
      expect(employee.to_s).to be_a(String).and include('Marek Nowak 987654321')
    end
  end
end
