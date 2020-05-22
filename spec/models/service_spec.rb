require 'rails_helper'

RSpec.describe Service, type: :model do
  # subject {described_class.new(name: "chifas")}
  fixtures :services

  context 'validations for service model' do
    it 'to be valid' do
      expect(services(:one)).to be_valid
    end

    it 'to be present' do
      expect(services(:one)).to be_present
    end

    it 'to not be valid' do
      services(:two).name = nil
      expect(services(:two)).to_not be_valid
    end

    it 'does not allow duplicate categories names per service' do
      servicio = Service.create(name: 'Pizzerias', active: true)
      servicio.categories.create(name: 'vegetariana')
      new_category = servicio.categories.build(name: 'vegetariana')
      new_category.valid?
      expect(new_category.errors[:name]).to include('el nombre de la categoria ya existe')
    end
  end

  context 'when running transactions' do
    it 'has none to begin with' do
      expect(Service.count).to eq 4
    end

    it 'has one after adding one' do
      Service.create(name: 'Chifas', active: true)
      expect(Service.count).to eq 5
    end

    it 'has none after one was created in a previous example' do
      expect(Service.count).to eq 4
    end
  end

  context 'using fixtures' do
    it 'fixture method defined' do
      services(:one)
    end
  end

  context 'instance double' do
    it 'has one after adding one' do
      instance_double('Service', name: 'Restaurantes')
    end
  end

  context 'when running scopes' do
    it 'returns active services' do
      expect(Service.active_services).to include(services(:one), services(:two))
    end

    it 'returns inactive services' do
      expect(Service.inactive_services).to include(services(:three), services(:four))
    end
  end
end
