require 'rails_helper'

RSpec.describe Commerce, type: :model do
  # subject {described_class.new(name:  "Los Angelitos", category_id: 1)}
  fixtures :categories
  fixtures :commerces

  context 'validations for category model' do
    it 'to be equl' do
      expect(commerces(:one)).to be_valid
    end

    it 'to be present' do
      expect(commerces(:one)).to be_present
    end

    it 'to not be valid' do
      commerces(:two).name = nil
      commerces(:two).category_id = nil
      expect(commerces(:two)).to_not be_valid
    end

    it 'to not be valid already exists' do
      commerce = Commerce.new(name: 'Los Angelitos', category_id: categories(:one).id)
      commerce.valid?
      expect(commerce).to_not be_valid
    end

    it 'returns an empty collection when no results are found' do
      expect(Commerce.search('Los Angelito')).to be_empty
    end

    it 'returns an object collection when results are found' do
      expect(Commerce.search('Los Angelitos')).to_not be_empty
    end
  end

  context 'when running transactions' do
    it 'has none to begin with' do
      expect(Commerce.count).to eq 3
    end

    it 'has one after adding one' do
      Commerce.create(name: '3 estrellas', category_id: 1)
      expect(Commerce.count).to eq 4
    end

    it 'has none after one was created in a previous example' do
      expect(Commerce.count).to eq 3
    end
  end

  context 'using fixtures' do
    it 'fixture method defined' do
      commerces(:one)
    end
  end

  context 'instance double' do
    it 'has one after adding one' do
      instance_double('Commerces', name: 'Los Angelitos')
    end
  end
end
