class Session < ApplicationRecord
  serialize :cached_user, JSON
  serialize :cached_client, JSON
  serialize :cached_permissions, JSON

  belongs_to :user
  belongs_to :customer

  validates :user_id, presence: { message: 'User ID must be set' }
  validates :customer_id, presence: { message: 'Customer ID must be set' }

  # before_create :create_access_token
  # before_create :reload_cached_data!

  # after_save :destroy_orphaned_sessions
  # after_save :remove_any_existing_sessions_for_user

  # private

  # def reload_cached_data!
  #   Auth::CachedSessionManager.process_new_record(self)
  # end

  # def create_access_token
  #   self.access_token = SecureRandom.hex(32)
  # end

  # def destroy_orphaned_sessions
  #   destroy if user_id.nil?
  # end

  # def remove_any_existing_sessions_for_user
  #   Session.where(user_id: user_id).where('id != ?', id).delete_all
  # end
end
