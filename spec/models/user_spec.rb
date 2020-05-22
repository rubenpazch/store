require 'rails_helper'

RSpec.describe User, type: :model do
  # subject {described_class.new(email: "rubenpazchuspe@outlook.com", password: 'somepassword')}
  fixtures :users

  context 'validations for user model' do
    it 'to be valid' do
      users(:one).password = 'asdzxcfgs'
      expect(users(:one)).to be_valid
    end

    it 'to not be valid' do
      users(:one).email = nil
      expect(users(:one)).to_not be_valid
    end

    it 'to not be valid' do
      users(:one).password = nil
      expect(users(:one)).to_not be_valid
    end

    it 'password must have from 8 to 20 elements' do
      users(:one).password = 'abcde'
      expect(users(:one)).to_not be_valid
    end
    it 'return message when is not valid' do
      users(:one).email = nil
      users(:one).valid?
      expect(users(:one).errors[:email]).to include('es un campo obligatorio')
    end

    it 'is invalid with a duplicate email address' do
      user = User.new(email: 'email1@correo.com', password: 'acbdefghi')
      user.valid?
      expect(user.errors[:email]).to include('ya fue tomado por otra persona')
    end
  end
end
