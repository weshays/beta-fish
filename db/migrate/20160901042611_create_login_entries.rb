class CreateLoginEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :login_entries do |t|
      t.integer :user_id
      t.datetime :created_at
    end

    add_index :login_entries, :user_id
  end
end
