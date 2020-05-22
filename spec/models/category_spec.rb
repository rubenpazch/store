require 'rails_helper'

RSpec.describe Category, type: :model do
  fixtures :categories
  fixtures :services

  context 'validations for category model' do
    it 'to be valid' do
      expect(categories(:one)).to be_valid
    end

    it 'to be present' do
      expect(categories(:one)).to be_present
    end

    it 'to not be valid' do
      categories(:two).name = nil
      expect(categories(:two)).to_not be_valid
    end

    it 'to not be valid already exists' do
      category = Category.new(name: '5 estrellas', service_id: services(:one).id)
      category.valid?
      expect(category).to_not be_valid
    end

    it 'does not allow duplicate commerces names per category' do
      category = Category.create(name: 'Sandwich')
      category.commerces.create(name: 'La esquina')
      new_commerce = category.commerces.build(name: 'La esquina')
      new_commerce.valid?
      expect(new_commerce.errors[:name]).to include('el nombre del comercio ya existe')
    end
  end

  context 'when running transactions' do
    it 'has none to begin with' do
      expect(Category.count).to eq 2
    end

    it 'has one after adding one' do
      Category.create(name: '3 estrellas', service_id: 1)
      expect(Category.count).to eq 3
    end

    it 'has none after one was created in a previous example' do
      expect(Category.count).to eq 2
    end
  end

  context 'using fixtures' do
    it 'fixture method defined' do
      categories(:one)
    end
  end

  context 'instance double' do
    it 'has one after adding one' do
      instance_double('Category', name: 'Restaurantes')
    end
  end
end
