class Service < ApplicationRecord
  has_many :categories
  has_many :commerces, through: :categories
  validates :name, presence: true

  validates :name, uniqueness: { message: 'el nombre del servicio ya fue creado' }

  scope :active_services, -> { where(active: true) }
  scope :inactive_services, -> { where(active: false) }
end
