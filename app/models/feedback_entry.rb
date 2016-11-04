class FeedbackEntry < ApplicationRecord
  belongs_to :customer
  has_one :feedback_entry_attachment
end
