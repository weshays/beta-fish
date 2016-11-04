class CreateFeedbackEntryAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :feedback_entry_attachments do |t|
      t.integer :feedback_entry_id
      t.string :file
      t.integer :size
    end
  end
end
