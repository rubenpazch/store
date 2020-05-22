class Category < ApplicationRecord
  belongs_to :service
  has_many :commerces

  validates :name, presence: { message: 'es un campo obligatorio' }
  validates :name, presence: true, uniqueness: { scope: :service_id, message: 'el nombre de la categoria ya existe' }
  validates :name, uniqueness: { message: 'el nombre de la categoria ya fue creado' }
end
