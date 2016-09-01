class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :customer_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :password_change, null: false, default: false
      t.string :perishable_token, null: false
      t.datetime :created_at
      t.datetime :deleted_at
    end

    add_index :users, :customer_id
    add_index :users, :deleted_at
  end
end
