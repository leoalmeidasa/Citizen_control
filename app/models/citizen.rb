class Citizen < ApplicationRecord
  validates :name, :cpf, :cns, :email, :birth_date, :telephone, :status, presence: true
  validates :cpf, length: {minimum: 11, maximum: 11}, uniqueness: true
  validates :cns, length: {minimum: 15, maximum: 15}, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  has_one_attached :photo

  scope :active, -> { where(status: true) }
  scope :inactive, -> { where(status: false) }
end
