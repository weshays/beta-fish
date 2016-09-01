class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :customer_id, null: false
      t.integer :user_id, null: false
      t.string :access_token, null: false
      t.jsonb :cached_customer
      t.jsonb :cached_user
      t.jsonb :cached_permissions
      t.datetime :created_at
    end

    add_index :sessions, :access_token
  end
end
