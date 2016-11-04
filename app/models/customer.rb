class Customer < ApplicationRecord
  belongs_to :policy
  has_many :feedback_entries
  has_many :sessions
  has_many :users

  validates :first_name, presence: { message: 'First name not set' }
  validates :last_name, presence: { message: 'Last name not set' }
  validates :address, presence: { message: 'Address not set' }
  validates :city, presence: { message: 'City not set' }
  validates :state, presence: { message: 'State not set' }
  validates :postal_code, presence: { message: 'Postal code not set' }
  validates :email, presence: { message: 'Email not set' }
  validates :phone_number, presence: { message: 'Phone number not set' }
end
