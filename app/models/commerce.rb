class Commerce < ApplicationRecord
  belongs_to :category
  has_one :service, through: :categories

  validates :name, presence: { message: 'es un campo obligatorio' }
  validates :name, presence: true, uniqueness: { scope: :category_id, message: 'el nombre del commercio ya existe' }
  validates :name, uniqueness: { message: 'el nombre del comercio ya fue creado' }

  scope :search, ->(commerce_to_search) { where('name = ?', commerce_to_search) }
end
