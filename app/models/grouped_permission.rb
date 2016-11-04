class GroupedPermission < ApplicationRecord
  belongs_to :permission
  belongs_to :policy

  validates :permission_id, presence: { message: 'Permission ID not set' }
  validates :policy_id, presence: { message: 'Policy ID not set' }
end
