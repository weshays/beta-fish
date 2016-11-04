class User < ApplicationRecord
  has_secure_password

  belongs_to :customer
  has_one :session, dependent: :destroy
  has_many :user_permissions
  has_many :permissions, through: :user_permissions
  accepts_nested_attributes_for :user_permissions, allow_destroy: true

  validates :customer_id, presence: { message: 'Customer ID not set' }
  validates :first_name, presence: { message: 'First name cannot be blank' }
  validates :last_name, presence: { message: 'Last name cannot be blank' }
  validates :email, presence: { message: 'Email cannot be blank' },
                    uniqueness: { case_sensitive: false, message: 'Email has already been taken' }

  before_validation :downcase_email_address

  scope :active, -> { where(deleted_at: nil) }

  def create_token
    self.token = Token.create(token: SecureRandom.hex(32))
    token.token
  end

  def downcase_email_address
    email.to_s.downcase!
  end
end
