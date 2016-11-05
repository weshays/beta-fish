class CreateFeedbackEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :feedback_entries do |t|
      t.integer :customer_id, null: false
      t.string :comprehension
      t.string :path
      t.text :comment
      t.string :browser
      t.string :operating_system
      t.string :screen_resolution
      t.string :browser_resolution
      t.text :screenshot
      t.datetime :viewed_at
      t.datetime :archived_at
      t.datetime :created_at
    end

    add_index :feedback_entries, :customer_id
    add_index :feedback_entries, :comprehension
  end
end
