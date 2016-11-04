class UserPermission < ApplicationRecord
  belongs_to :permission
  belongs_to :user

  validates :permission_id, presence: { message: 'Permission ID not set' }
  validates :user_id, presence: { message: 'User ID not set' }
end
