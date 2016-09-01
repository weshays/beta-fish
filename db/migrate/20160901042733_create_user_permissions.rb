class CreateUserPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_permissions do |t|
      t.integer :user_id, null: false
      t.integer :permission_id, null: false
    end

    add_index :user_permissions, [:user_id, :permission_id]
  end
end
