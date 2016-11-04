class Permission < ApplicationRecord
  has_many :user_permissions, dependent: :destroy
  has_many :users, through: :user_permissions

  has_many :grouped_permissions, dependent: :destroy
  has_many :policies, through: :grouped_permissions

  validates :group, presence: true
  validates :name, presence: true, uniqueness: { scope: :group }
end
