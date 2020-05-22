class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: { message: 'es un campo obligatorio' }
  validates :encrypted_password, presence: { message: 'es un campo obligatorio' }
  validates :password, length: { in: 6..20, message: 'debe tener entre 8 y 20 caracteres alfanumericos' }
  validates :email, uniqueness: { message: 'ya fue tomado por otra persona' }
end
