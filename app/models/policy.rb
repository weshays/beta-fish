class Policy < ApplicationRecord
  has_many :grouped_permissions, dependent: :destroy
  has_many :permissions, through: :grouped_permissions
  has_many :customers

  accepts_nested_attributes_for :grouped_permissions, allow_destroy: true

  validates :name, presence: true, uniqueness: true
end
