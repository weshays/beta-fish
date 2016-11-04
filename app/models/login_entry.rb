class LoginEntry < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: { message: 'User ID not selected' }
  validates :ip_address, presence: { message: 'IP address cannot be blank' }
end
